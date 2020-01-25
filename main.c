#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 
#include <stdbool.h> 
#include <ctype.h>
#include "trie.h"


int main(int argc, char* argv[]) {
    trie* root;
    boolean r = false;
    r = should_reverse(argc, argv);
    root = read_text();
    if (r)
        print_trie_reverse(root);
    else
        print_trie(root);
    free_trie(root);
    return 0;
}