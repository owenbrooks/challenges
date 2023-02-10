import codecs
import sys

encoded_message = "SYNT{uneel_cbggre_jbhyq_or_cebhq}"
decoded_message = codecs.decode(encoded_message, 'rot_13')
print(decoded_message)

if len(sys.argv) > 1:
    original_message = sys.argv[1]
    encoded_message = codecs.encode(original_message, 'rot_13')

    print(encoded_message)