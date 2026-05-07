package deployment

default allow := false

allow if {
    input.cpu != ""
    input.environment != ""
    valid_memory
}

valid_memory if {
    input.environment == "production"
    memory_value >= 512
}

memory_value := to_number(trim_suffix(input.memory, "Mi"))