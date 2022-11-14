#include <stdint.h>
#include <stdio.h>
#include <climits>

#include <fuzzer/FuzzedDataProvider.h>
#include "gmic.h"

extern "C" int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
    FuzzedDataProvider provider(data, size);
    std::string command = provider.ConsumeRandomLengthString();
    const char* command_c = command.c_str();
    std::string message = provider.ConsumeRandomLengthString();
    const char* message_c = message.c_str();

    gmic_exception e(command_c, message_c);

    return 0;
}