version 1.0

task run_SEIRModel {
    input {
        File setup_os_script
        File install_SEIR_script
        File SEIR_script
        File move_results_script
    }
    command {
        ${setup_os_script}
        ${install_SEIR_script}
        R --slave --no-save --no-restore --no-site-file --no-environ -f ${SEIR_script} --args ""
        ${move_results_script}
    }
    runtime {
        docker: "npanicker/r-desolve:1.1"
    }
    output {
        File response = stdout()
    }
}

workflow idmWorkflow {
    call run_SEIRModel {
        input:
            setup_os_script = "./scripts/sh/setup_os.sh",
            install_SEIR_script = "./scripts/sh/install_SEIR.sh",
            SEIR_script = "./scripts/R/SEIR.R",
            move_results_script = "./scripts/sh/move_results.sh"
    }
}

