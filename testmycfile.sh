#!/bin/sh
## Workshop Khalid

GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'

for c_file in test_*.c; do
    base_name="${c_file#test_}"
    base_name="${base_name%.c}"
    asm_o="${base_name}.o"
    output_name="${base_name}"

    gcc "$c_file" "$asm_o" -o "$output_name"

    if [[ -x "$output_name" ]]; then
        generated_executables+=("$output_name")
    fi
done

if [[ ${#generated_executables[@]} -gt 0 ]]; then
    for exe in "${generated_executables[@]}"; do
        echo -e "${GREEN}$exe${NC}${RESET} generated correctly"
    done
else
    echo -e "${RED}No executables generated.${NC}"
fi

clean() {
    echo "Cleaning up..."
    rm -f *.o *.so "${generated_executables[@]}"
    echo -e "${GREEN}DONE !${NC}"
}

if [[ "$1" == "clean" ]]; then
    clean
    exit 0
fi

