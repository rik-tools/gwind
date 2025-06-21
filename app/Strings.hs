{-# LANGUAGE QuasiQuotes #-}
module Strings (how, version, completion)
where

    import Data.Text (pack, replace, unpack)
    import NeatInterpolation (text)

--
    how :: String
    how = unpack [text|
        ---
        -- $ gwind revise projects
        -- $ gwind revise service-accounts <project-snake>
        -- $ gwind revise service-account-keys <project-snake> <service-snake>
        -- $ gwind revise iam-policy <project-snake>
        -- $ gwind revise billing-accounts
        -- $ gwind revise billing-projects <billing-snake>
        -- $ gwind revise services <project-snake>
        -- $ gwind revise storage-buckets <project-snake>
        --
        -- $ gwind create project <project-snake>
        -- $ gwind create service-account <project-snake> <service-snake>
        -- $ gwind create service-account-key <project-snake> <service-snake>
        -- $ gwind create iam-policy-binding <project-snake> <service-snake>
        -- $ gwind create billing-project <project-snake> <billing-snake>
        -- $ gwind create services <project-snake> <service-nicks>
        -- $ gwind create storage-bucket <project-snake>
        --
        -- $ gwind delete project <project-snake>
        -- $ gwind delete service-account <project-snake> <service-snake>
        -- $ gwind delete service-account-key <project-snake> <service-snake>
        -- $ gwind delete iam-policy-binding <project-snake> <service-snake>
        -- $ gwind delete iam-policy <project-snake>
        -- $ gwind delete billing-project <project-snake>
        -- $ gwind delete services <project-snake> <service-nicks>
        -- $ gwind delete storage-bucket <project-snake>
        --
        -- $ source <(gwind --completion)
        -- $ gwind --version
        -- $ gwind --how
        ---
    |]

--
    version :: String
    version = unpack [text|
        1.0.1
    |]

--
    completion :: String
    completion = (unpack . replace (pack "@") (pack "$")) [text|
        #!/bin/bash
        ##
        # @ source etc/completion
        ##
        # shellcheck disable=SC2034
        # shellcheck disable=SC2207
        STD="--how --version --completion"
        GWIND="revise create delete @STD"
        GWIND_REVISE="projects service-accounts service-account-keys iam-policy billing-accounts billing-projects services storage-buckets"
        GWIND_CREATE="project service-account service-account-key iam-policy-binding billing-project services storage-bucket"
        GWIND_DELETE="project service-account service-account-key iam-policy-binding iam-policy billing-project services storage-bucket"

        cmp_gwind_verbs () {
            COMPREPLY=(@(compgen -W "@GWIND" -- "@cur"))
        }

        cmp_gwind_nouns () {
            local verb_var="GWIND_@{prev^^}"
            COMPREPLY=(@(compgen -W "@{!verb_var}" -- "@cur"))
        }

        cmp_gwind_adjes () {
            case "@{words[1]}" in
            "revise"   ) cmp_gwind_revise;;
            "create"   ) cmp_gwind_create;;
            "delete"   ) cmp_gwind_delete;;
            esac
        }

        cmp_gwind_revise () {
            case "@{words[2]}" in
            "projects"             ) COMPREPLY=();;
            "service-accounts"     ) COMPREPLY=("<project-snake>");;
            "service-account-keys" ) COMPREPLY=("<project-snake> <service-snake>");;
            "iam-policy"           ) COMPREPLY=("<project-snake>");;
            "billing-accounts"     ) COMPREPLY=();;
            "billing-projects"     ) COMPREPLY=("<billing-snake>");;
            "services"             ) COMPREPLY=("<project-snake>");;
            "storage-buckets"      ) COMPREPLY=("<project-snake>");;
            esac
        }

        cmp_gwind_create () {
            case "@{words[2]}" in
            "project"             ) COMPREPLY=("<project-snake>");;
            "service-account"     ) COMPREPLY=("<project-snake> <service-snake>");;
            "service-account-key" ) COMPREPLY=("<project-snake> <service-snake>");;
            "iam-policy-binding"  ) COMPREPLY=("<project-snake> <service-snake>");;
            "billing-project"     ) COMPREPLY=("<project-snake> <billing-snake>");;
            "services"            ) COMPREPLY=("<project-snake> <service-nicks>");;
            "storage-bucket"      ) COMPREPLY=("<project-snake>");;
            esac
        }

        cmp_gwind_delete () {
            case "@{words[2]}" in
            "project"             ) COMPREPLY=("<project-snake>");;
            "service-account"     ) COMPREPLY=("<project-snake> <service-snake>");;
            "service-account-key" ) COMPREPLY=("<project-snake> <service-snake>");;
            "iam-policy-binding"  ) COMPREPLY=("<project-snake> <service-snake>");;
            "iam-policy"          ) COMPREPLY=("<project-snake>");;
            "billing-project"     ) COMPREPLY=("<project-snake>");;
            "services"            ) COMPREPLY=("<project-snake> <service-nicks>");;
            "storage-bucket"      ) COMPREPLY=("<project-snake>");;
            esac
        }

        cmp_gwind () {
            COMPREPLY=()
            local cur prev words cword
            _get_comp_words_by_ref -n : cur prev words cword
            case "@cword" in
            1) cmp_gwind_verbs;;
            2) cmp_gwind_nouns;;
            3) cmp_gwind_adjes;;
            esac
            return 0
        }

        complete -F cmp_gwind gwind
    |]

--
