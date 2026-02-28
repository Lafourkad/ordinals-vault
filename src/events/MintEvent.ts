import { u256 } from '@btc-vision/as-bignum/assembly';
import { BytesWriter } from '@btc-vision/btc-runtime/runtime';
import { NetEvent } from '@btc-vision/btc-runtime/runtime';
import { U256_BYTE_LENGTH } from '@btc-vision/btc-runtime/runtime';

/**
 * Event emitted when an Ordinal inscription is successfully minted as an OP721 token.
 *
 * Data layout:
 * - 4 bytes: inscriptionId UTF-8 byte length (u32)
 * - N bytes: inscriptionId UTF-8 bytes
 * - 32 bytes: tokenId (u256, big-endian)
 */
@final
export class MintEvent extends NetEvent {
    constructor(inscriptionId: string, tokenId: u256) {
        // inscriptionId is ASCII (hex + "i" + index), so length == UTF-8 byte count
        const strByteLen: i32 = inscriptionId.length;
        const data: BytesWriter = new BytesWriter(4 + strByteLen + U256_BYTE_LENGTH);

        data.writeStringWithLength(inscriptionId);
        data.writeU256(tokenId);

        super('Mint', data);
    }
}
