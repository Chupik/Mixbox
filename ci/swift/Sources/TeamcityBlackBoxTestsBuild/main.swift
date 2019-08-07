import BuildDsl
import SingletonHell
import RunBlackBoxTestsTask

BuildDsl.teamcity.main { di in
    try RunBlackBoxTestsTask(
        bashExecutor: di.resolve(),
        blackBoxTestRunner: EmceeBlackBoxTestRunner(
            emceeProvider: di.resolve(),
            temporaryFileProvider: di.resolve(),
            bashExecutor: di.resolve(),
            queueServerRunConfigurationUrl: Env.MIXBOX_CI_EMCEE_QUEUE_SERVER_RUN_CONFIGURATION_URL.getOrThrow(),
            sharedQueueDeploymentDestinationsUrl: Env.MIXBOX_CI_EMCEE_SHARED_QUEUE_DEPLOYMENT_DESTINATIONS_URL.getOrThrow(),
            workerDeploymentDestinationsUrl: Env.MIXBOX_CI_EMCEE_WORKER_DEPLOYMENT_DESTINATIONS_URL.getOrThrow()
        )
    )
}

