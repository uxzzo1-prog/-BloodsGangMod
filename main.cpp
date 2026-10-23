#include <mod/amlmod.h>
#include <mod/logger.h>
#include <jni.h>

MYMOD(net.david.bloodsgang, Bloods Gang Mod, 1.0, David)

uintptr_t pGTABase = 0;

void OnModLoad() {
    logger->Info("=================================");
    logger->Info("Bloods Gang Mod for GTA SA Loaded!");
    logger->Info("Target: AML V2.00 | ARMv7 32-bit");
    logger->Info("=================================");

    pGTABase = aml->GetLibHandle();
    if (pGTABase == 0) {
        logger->Error("Failed to get GTA SA library handle!");
        return;
    }
}
