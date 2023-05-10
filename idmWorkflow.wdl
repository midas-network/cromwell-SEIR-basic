version 1.0

task run_EpiModel {
    input {
        File setup_os_script
        File install_r_script
        File install_EpiModel_script
        File EpiModel_script
    }
    command {
        ${setup_os_script}
        ${install_r_script}
        ${install_EpiModel_script}
        R --slave --no-save --no-restore --no-site-file --no-environ -f ${EpiModel_script} --args ""
    }
    runtime {
        docker: "ubuntu:lunar"
    }
    output {
        File response = stdout()
    }
}

workflow idmWorkflow {
    call run_EpiModel {
        input:
            setup_os_script = "./scripts/sh/setup_os.sh",
            install_r_script = "./scripts/sh/install_r.sh",
            install_EpiModel_script = "./scripts/sh/install_EpiModel.sh",
            EpiModel_script = "./scripts/R/BasicDCMs.R"
    }
}

