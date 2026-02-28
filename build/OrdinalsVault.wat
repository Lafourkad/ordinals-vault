(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func (param i32 i32 i32)))
 (type $4 (func (param i32)))
 (type $5 (func (param i32 i32 i32) (result i32)))
 (type $6 (func (param i32 i32 i32 i32)))
 (type $7 (func (param i32 i32 i32 i32) (result i32)))
 (type $8 (func (result i32)))
 (type $9 (func (param i32 i64) (result i32)))
 (type $10 (func))
 (type $11 (func (param i32 i64)))
 (type $12 (func (param i32 i32 i32 i32 i32)))
 (type $13 (func (param i32 i32 i32 i32 i64 i32)))
 (type $14 (func (param i64 i64) (result i32)))
 (type $15 (func (param i64 i64 i64 i64) (result i32)))
 (type $16 (func (param i64 i64)))
 (type $17 (func (param i32 i32 i64)))
 (type $18 (func (param i32 i32) (result i64)))
 (type $19 (func (param i64 i64 i64 i64 i64 i64 i64 i64) (result i32)))
 (type $20 (func (param i64) (result i64)))
 (type $21 (func (param i32) (result i64)))
 (import "env" "exit" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/env_exit (param i32 i32 i32)))
 (import "env" "environment" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/getEnvironmentVariables (param i32 i32 i32)))
 (import "env" "calldata" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/getCalldata (param i32 i32 i32)))
 (import "env" "sha256" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/_sha256 (param i32 i32 i32)))
 (import "env" "load" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/loadPointer (param i32 i32)))
 (import "env" "store" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/storePointer (param i32 i32)))
 (import "env" "emit" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/emit (param i32 i32)))
 (import "env" "accountType" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/getAccountType (param i32) (result i32)))
 (import "env" "call" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/callContract (param i32 i32 i32 i32) (result i32)))
 (import "env" "callResult" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/getCallResult (param i32 i32 i32)))
 (import "env" "verifySignature" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/verifySignature (param i32 i32 i32) (result i32)))
 (import "env" "loadMLDSA" (func $~lib/@btc-vision/btc-runtime/runtime/env/global/loadMLDSA (param i32 i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/types/Address/ZERO_ADDRESS (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/script/Networks/Network (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_BUFFER (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/math/bytes/ONE_BUFFER (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddressCache/_cachedDeadAddress (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/SCRATCH_BUF (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/FOUR_BYTES_UINT8ARRAY_MEMORY_CACHE (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString.MAX_LENGTH_U256 (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/statusPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/depthPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/stringPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/totalSupplyPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/maxSupplyPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/ownerOfMapPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenApprovalMapPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/operatorApprovalMapPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/balanceOfMapPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenURIMapPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/nextTokenIdPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/ownerTokensMapPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenIndexMapPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/initializedPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenURICounterPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/approveNonceMapPointer (mut i32) (i32.const 0))
 (global $src/contract/OrdinalsVault/burnAddressPointer (mut i32) (i32.const 0))
 (global $src/contract/OrdinalsVault/verifiedBurnsPointer (mut i32) (i32.const 0))
 (global $src/contract/OrdinalsVault/burnBlockHeightsPointer (mut i32) (i32.const 0))
 (global $src/contract/OrdinalsVault/mintedInscriptionsPointer (mut i32) (i32.const 0))
 (global $~lib/@btc-vision/as-bignum/assembly/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry (mut i64) (i64.const 0))
 (global $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub (mut i64) (i64.const 0))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\08\00\00\00 \00a\00t\00 ")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\02\00\00\00:")
 (data $2 (i32.const 1100) ",\00\00\00\03\00\00\00\00\00\00\00\05\00\00\00\1c\00\00\00\00\00\00\00 \04\00\00\00\00\00\00@\04\00\00\00\00\00\00@\04")
 (data $3 (i32.const 1148) "\1c\02")
 (data $3.1 (i32.const 1160) "\06\00\00\00\00\02\00\00000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f8f9fafbfcfdfeff")
 (data $4 (i32.const 1692) "|")
 (data $4.1 (i32.const 1704) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $5 (i32.const 1820) "<")
 (data $5.1 (i32.const 1832) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $6 (i32.const 1884) "\1c")
 (data $6.1 (i32.const 1896) "\02\00\00\00\02\00\00\000")
 (data $7 (i32.const 1916) "\\")
 (data $7.1 (i32.const 1928) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $8 (i32.const 2012) "\1c")
 (data $8.1 (i32.const 2024) "\02")
 (data $9 (i32.const 2044) "<")
 (data $9.1 (i32.const 2056) "\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data $10 (i32.const 2108) ",")
 (data $10.1 (i32.const 2120) "\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data $11 (i32.const 2156) "<")
 (data $11.1 (i32.const 2168) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $12 (i32.const 2220) "<")
 (data $12.1 (i32.const 2232) "\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $13 (i32.const 2284) ",")
 (data $13.1 (i32.const 2296) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $14 (i32.const 2332) "<")
 (data $14.1 (i32.const 2344) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $15 (i32.const 2396) "<")
 (data $15.1 (i32.const 2408) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s")
 (data $16 (i32.const 2460) "<")
 (data $16.1 (i32.const 2472) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $17 (i32.const 2524) "<")
 (data $17.1 (i32.const 2536) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data $18 (i32.const 2588) "L")
 (data $18.1 (i32.const 2600) "\02\00\00\006\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00p\00u\00b\00l\00i\00c\00 \00k\00e\00y\00 \00l\00e\00n\00g\00t\00h\00 \00(")
 (data $19 (i32.const 2668) "\1c")
 (data $19.1 (i32.const 2680) "\02\00\00\00\02\00\00\00)")
 (data $20 (i32.const 2700) "\1c\00\00\00\03\00\00\00\00\00\00\00\05\00\00\00\0c\00\00\000\n\00\00\00\00\00\00\80\n")
 (data $21 (i32.const 2732) "|")
 (data $21.1 (i32.const 2744) "\02\00\00\00j\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00t\00y\00p\00e\00s\00/\00A\00d\00d\00r\00e\00s\00s\00.\00t\00s")
 (data $22 (i32.const 2860) "\1c")
 (data $22.1 (i32.const 2872) "\01")
 (data $23 (i32.const 2892) "\9c")
 (data $23.1 (i32.const 2904) "\01\00\00\00\80")
 (data $23.2 (i32.const 2932) "\19\00\00\00\d6\00\00\00h\00\00\00\9c\00\00\00\08\00\00\00Z\00\00\00\e1\00\00\00e\00\00\00\83\00\00\00\1e\00\00\00\93\00\00\00O\00\00\00\f7\00\00\00c\00\00\00\ae\00\00\00F\00\00\00\a2\00\00\00\a6\00\00\00\c1\00\00\00r\00\00\00\b3\00\00\00\f1\00\00\00\b6\00\00\00\n\00\00\00\8c\00\00\00\e2\00\00\00o")
 (data $24 (i32.const 3052) "\9c")
 (data $24.1 (i32.const 3064) "\01\00\00\00\80")
 (data $24.2 (i32.const 3088) "\t\00\00\003\00\00\00\ea\00\00\00\01\00\00\00\ad\00\00\00\0e\00\00\00\e9\00\00\00\84\00\00\00 \00\00\00\97\00\00\00y\00\00\00\ba\00\00\00\ae\00\00\00\c3\00\00\00\ce\00\00\00\d9\00\00\00\0f\00\00\00\a3\00\00\00\f4\00\00\00\08\00\00\00q\00\00\00\95\00\00\00&\00\00\00\f8\00\00\00\d7\00\00\00\7f\00\00\00I\00\00\00C")
 (data $25 (i32.const 3212) "\9c")
 (data $25.1 (i32.const 3224) "\01\00\00\00\80\00\00\00\0f\00\00\00\91\00\00\00\88\00\00\00\f1\00\00\00<\00\00\00\b7\00\00\00\b2\00\00\00\c7\00\00\00\1f\00\00\00*\00\00\003\00\00\00^\00\00\00:\00\00\00O\00\00\00\c3\00\00\00(\00\00\00\bf\00\00\00[\00\00\00\eb\00\00\00C\00\00\00`\00\00\00\12\00\00\00\af\00\00\00\ca\00\00\00Y\00\00\00\0b\00\00\00\1a\00\00\00\11\00\00\00F\00\00\00n\00\00\00\"\00\00\00\06")
 (data $26 (i32.const 3372) "<")
 (data $26.1 (i32.const 3384) "\02\00\00\00$\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $27 (i32.const 3436) "\\")
 (data $27.1 (i32.const 3448) "\02\00\00\00@\00\00\00q\00p\00z\00r\00y\009\00x\008\00g\00f\002\00t\00v\00d\00w\000\00s\003\00j\00n\005\004\00k\00h\00c\00e\006\00m\00u\00a\007\00l")
 (data $28 (i32.const 3532) "<")
 (data $28.1 (i32.const 3544) "\01\00\00\00 \00\00\00(J\e4\ac\db2\a9\9b\a3\eb\faf\a9\1d\dbA\a7\b7\a1\d2\fe\f4\159\99\"\cd\8a\04H\\\02")
 (data $29 (i32.const 3596) ",")
 (data $29.1 (i32.const 3608) "\n\00\00\00\10\00\00\00\e0\r\00\00\e0\r\00\00 \00\00\00 ")
 (data $30 (i32.const 3644) "<")
 (data $30.1 (i32.const 3656) "\01\00\00\00 ")
 (data $31 (i32.const 3708) ",")
 (data $31.1 (i32.const 3720) "\n\00\00\00\10\00\00\00P\0e\00\00P\0e\00\00 \00\00\00 ")
 (data $32 (i32.const 3756) "l")
 (data $32.1 (i32.const 3768) "\02\00\00\00P\00\00\00T\00w\00e\00a\00k\00e\00d\00 \00p\00u\00b\00l\00i\00c\00 \00k\00e\00y\00 \00m\00u\00s\00t\00 \00b\00e\00 \003\002\00 \00b\00y\00t\00e\00s\00 \00l\00o\00n\00g")
 (data $33 (i32.const 3868) "\8c")
 (data $33.1 (i32.const 3880) "\02\00\00\00z\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00t\00y\00p\00e\00s\00/\00E\00x\00t\00e\00n\00d\00e\00d\00A\00d\00d\00r\00e\00s\00s\00.\00t\00s")
 (data $34 (i32.const 4012) ",")
 (data $34.1 (i32.const 4024) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $35 (i32.const 4060) "\1c")
 (data $35.1 (i32.const 4072) "\01")
 (data $36 (i32.const 4092) "\1c")
 (data $36.1 (i32.const 4104) "\01")
 (data $37 (i32.const 4124) "<")
 (data $37.1 (i32.const 4136) "\01\00\00\00 \00\00\00~\88\02\f1\fd#\e1\0e\r\de?\00\c0\aaH\15\d8\85\ec\d9\cd\a0\dfV\ff\a2^\ccp-E\8e")
 (data $38 (i32.const 4188) ",")
 (data $38.1 (i32.const 4200) "\n\00\00\00\10\00\00\000\10\00\000\10\00\00 \00\00\00 ")
 (data $39 (i32.const 4236) "<")
 (data $39.1 (i32.const 4248) "\01\00\00\00 \00\00\00p\87\994\92\1c/H\17x\87\89w\d5\b4^*Y\da\1d(\"A\c9?\f1\baj\f0\98\fc\d0")
 (data $40 (i32.const 4300) ",")
 (data $40.1 (i32.const 4312) "\n\00\00\00\10\00\00\00\a0\10\00\00\a0\10\00\00 \00\00\00 ")
 (data $41 (i32.const 4348) "<")
 (data $41.1 (i32.const 4360) "\01\00\00\00 \00\00\00Zd,\a2\d8\fd\e9\e1(\87|\f5]q\96\e3:\d4K\b3K\n\8d\85\8d\a8\04\bd;\86!\0e")
 (data $42 (i32.const 4412) ",")
 (data $42.1 (i32.const 4424) "\n\00\00\00\10\00\00\00\10\11\00\00\10\11\00\00 \00\00\00 ")
 (data $43 (i32.const 4460) "<")
 (data $43.1 (i32.const 4472) "\01\00\00\00 \00\00\00{\f8\b69_\ea\cc\15\97\128\00\91\b9+\96gk+sF\ff)\'\bf\1aT\f8\fc\ef\9c\0b")
 (data $44 (i32.const 4524) ",")
 (data $44.1 (i32.const 4536) "\n\00\00\00\10\00\00\00\80\11\00\00\80\11\00\00 \00\00\00 ")
 (data $45 (i32.const 4572) "<")
 (data $45.1 (i32.const 4584) "\01\00\00\00 \00\00\00\fe\e8\"\925\1d\1a\8b\ab!\c4\ef\dd\15~1h\e8\f62:\d0L\ba\12\f7|\0b\dcF\"X")
 (data $46 (i32.const 4636) ",")
 (data $46.1 (i32.const 4648) "\n\00\00\00\10\00\00\00\f0\11\00\00\f0\11\00\00 \00\00\00 ")
 (data $47 (i32.const 4684) "<")
 (data $47.1 (i32.const 4696) "\01\00\00\00 \00\00\00k\86\b2s\ff4\fc\e1\9dk\80N\ffZ?WG\ad\a4\ea\a2/\1dI\c0\1eR\dd\b7\87[K")
 (data $48 (i32.const 4748) ",")
 (data $48.1 (i32.const 4760) "\n\00\00\00\10\00\00\00`\12\00\00`\12\00\00 \00\00\00 ")
 (data $49 (i32.const 4796) "<")
 (data $49.1 (i32.const 4808) "\01\00\00\00 \00\00\00\b8n\99\da\c0GKJ\9f\c32:\d6\ed/9U\e7\b8m\c6\8cbB\82\1c\bc\ac\a2\d8y\de")
 (data $50 (i32.const 4860) ",")
 (data $50.1 (i32.const 4872) "\n\00\00\00\10\00\00\00\d0\12\00\00\d0\12\00\00 \00\00\00 ")
 (data $51 (i32.const 4908) "<")
 (data $51.1 (i32.const 4920) "\01\00\00\00 \00\00\00OH\06]\9e\f1E%k\f7\7f\d2\e5\8by\e6\f6\0c\d0\d3Gp\1424P\c9e\b7K\80\ed")
 (data $52 (i32.const 4972) ",")
 (data $52.1 (i32.const 4984) "\n\00\00\00\10\00\00\00@\13\00\00@\13\00\00 \00\00\00 ")
 (data $53 (i32.const 5020) "<")
 (data $53.1 (i32.const 5032) "\01\00\00\00 \00\00\00\f9\03\d7\be\0c\a4\99\eem}F\"\c7\92\b2\ead\ab\a6\afhQ\03\fe\c4\ae\12\d7\a6\a9\b2\0f")
 (data $54 (i32.const 5084) ",")
 (data $54.1 (i32.const 5096) "\n\00\00\00\10\00\00\00\b0\13\00\00\b0\13\00\00 \00\00\00 ")
 (data $55 (i32.const 5132) "L")
 (data $55.1 (i32.const 5144) "\02\00\00\00.\00\00\00O\00u\00t\00 \00o\00f\00 \00s\00t\00o\00r\00a\00g\00e\00 \00p\00o\00i\00n\00t\00e\00r\00.")
 (data $56 (i32.const 5212) "\9c")
 (data $56.1 (i32.const 5224) "\02\00\00\00\82\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00e\00n\00v\00/\00B\00l\00o\00c\00k\00c\00h\00a\00i\00n\00E\00n\00v\00i\00r\00o\00n\00m\00e\00n\00t\00.\00t\00s")
 (data $57 (i32.const 5372) "<")
 (data $57.1 (i32.const 5384) "\01\00\00\00 \00\00\00/\fc\ff\ff\fe\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff")
 (data $58 (i32.const 5436) ",")
 (data $58.1 (i32.const 5448) "\n\00\00\00\10\00\00\00\10\15\00\00\10\15\00\00 \00\00\00 ")
 (data $59 (i32.const 5484) "<")
 (data $59.1 (i32.const 5496) "\01\00\00\00 \00\00\00\98\17\f8\16\b1[(\d9Y(\ce-\db\fc\9b\02p\b0\87\ce\95\a0bU\ac\bb\dc\f9\eff\bey")
 (data $60 (i32.const 5548) ",")
 (data $60.1 (i32.const 5560) "\n\00\00\00\10\00\00\00\80\15\00\00\80\15\00\00 \00\00\00 ")
 (data $61 (i32.const 5596) "<")
 (data $61.1 (i32.const 5608) "\01\00\00\00 \00\00\00\b8\d4\10\fb\8f\d0G\9c\19T\85\a6H\b4\17\fd\a8\08\11\0e\fc\fb\a4]e\c4\a3&w\da:H")
 (data $62 (i32.const 5660) ",")
 (data $62.1 (i32.const 5672) "\n\00\00\00\10\00\00\00\f0\15\00\00\f0\15\00\00 \00\00\00 ")
 (data $63 (i32.const 5708) "|")
 (data $63.1 (i32.const 5720) "\02\00\00\00f\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\002\005\006\00.\00t\00s")
 (data $64 (i32.const 5836) "L")
 (data $64.1 (i32.const 5848) "\02\00\00\002\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00(\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00)")
 (data $65 (i32.const 5916) "\\")
 (data $65.1 (i32.const 5928) "\02\00\00\00J\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m\00(\00a\00d\00d\00r\00e\00s\00s\00,\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00)")
 (data $66 (i32.const 6012) "\\")
 (data $66.1 (i32.const 6024) "\02\00\00\00F\00\00\00s\00a\00f\00e\00T\00r\00a\00n\00s\00f\00e\00r\00(\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00,\00b\00y\00t\00e\00s\00)")
 (data $67 (i32.const 6108) "|")
 (data $67.1 (i32.const 6120) "\02\00\00\00^\00\00\00s\00a\00f\00e\00T\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m\00(\00a\00d\00d\00r\00e\00s\00s\00,\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00,\00b\00y\00t\00e\00s\00)")
 (data $68 (i32.const 6236) "\\")
 (data $68.1 (i32.const 6248) "\02\00\00\00D\00\00\00i\00n\00c\00r\00e\00a\00s\00e\00A\00l\00l\00o\00w\00a\00n\00c\00e\00(\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00)")
 (data $69 (i32.const 6332) "\\")
 (data $69.1 (i32.const 6344) "\02\00\00\00D\00\00\00d\00e\00c\00r\00e\00a\00s\00e\00A\00l\00l\00o\00w\00a\00n\00c\00e\00(\00a\00d\00d\00r\00e\00s\00s\00,\00u\00i\00n\00t\002\005\006\00)")
 (data $70 (i32.const 6428) ",")
 (data $70.1 (i32.const 6440) "\02\00\00\00\1a\00\00\00b\00u\00r\00n\00(\00u\00i\00n\00t\002\005\006\00)")
 (data $71 (i32.const 6476) "\1c")
 (data $71.1 (i32.const 6488) "\01")
 (data $72 (i32.const 6508) ",")
 (data $72.1 (i32.const 6520) "\02\00\00\00\14\00\00\00S\00t\00o\00r\00e\00d\00U\002\005\006")
 (data $73 (i32.const 6556) "l")
 (data $73.1 (i32.const 6568) "\02\00\00\00N\00\00\00P\00o\00i\00n\00t\00e\00r\00s\00 \00m\00u\00s\00t\00 \00b\00e\00 \00e\00x\00a\00c\00t\00l\00y\00 \003\000\00 \00b\00y\00t\00e\00s\00.\00 \00G\00o\00t\00 ")
 (data $74 (i32.const 6668) ",")
 (data $74.1 (i32.const 6680) "\02\00\00\00\16\00\00\00,\00 \00c\00o\00n\00t\00e\00x\00t\00:\00 ")
 (data $75 (i32.const 6716) "\1c")
 (data $75.1 (i32.const 6728) "\02\00\00\00\02\00\00\00.")
 (data $76 (i32.const 6748) ",\00\00\00\03\00\00\00\00\00\00\00\05\00\00\00\14\00\00\00\b0\19\00\00\00\00\00\00 \1a\00\00\00\00\00\00P\1a")
 (data $77 (i32.const 6796) "|")
 (data $77.1 (i32.const 6808) "\02\00\00\00`\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00m\00a\00t\00h\00/\00a\00b\00i\00.\00t\00s")
 (data $78 (i32.const 6924) "<")
 (data $78.1 (i32.const 6936) "\02\00\00\00 \00\00\00D\00i\00v\00i\00s\00i\00o\00n\00 \00b\00y\00 \00z\00e\00r\00o")
 (data $79 (i32.const 6988) "\\")
 (data $79.1 (i32.const 7000) "\02\00\00\00B\00\00\00S\00a\00f\00e\00M\00a\00t\00h\00:\00 \00m\00u\00l\00t\00i\00p\00l\00i\00c\00a\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data $80 (i32.const 7084) "|")
 (data $80.1 (i32.const 7096) "\02\00\00\00l\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00t\00y\00p\00e\00s\00/\00S\00a\00f\00e\00M\00a\00t\00h\00.\00t\00s")
 (data $81 (i32.const 7212) "\1c")
 (data $81.1 (i32.const 7224) "\01")
 (data $82 (i32.const 7244) "\1c")
 (data $82.1 (i32.const 7256) "\01")
 (data $83 (i32.const 7276) "\1c")
 (data $83.1 (i32.const 7288) "9\00\00\00\08\00\00\00\01")
 (data $84 (i32.const 7308) "<")
 (data $84.1 (i32.const 7320) "\02\00\00\00(\00\00\00C\00o\00n\00t\00r\00a\00c\00t\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $85 (i32.const 7372) "\8c")
 (data $85.1 (i32.const 7384) "\02\00\00\00z\00\00\00A\00t\00t\00e\00m\00p\00t\00 \00t\00o\00 \00r\00e\00a\00d\00 \00b\00e\00y\00o\00n\00d\00 \00b\00u\00f\00f\00e\00r\00 \00l\00e\00n\00g\00t\00h\00.\00 \00R\00e\00q\00u\00e\00s\00t\00e\00d\00 \00u\00p\00 \00t\00o\00 \00o\00f\00f\00s\00e\00t\00 ")
 (data $86 (i32.const 7516) "\1c")
 (data $86.1 (i32.const 7528) "\02\00\00\00\04\00\00\00,\00 ")
 (data $87 (i32.const 7548) "\1c\00\00\00\03\00\00\00\00\00\00\00\05\00\00\00\0c\00\00\00\e0\1c\00\00\00\00\00\00p\1d")
 (data $88 (i32.const 7580) "<")
 (data $88.1 (i32.const 7592) "\02\00\00\00&\00\00\00b\00u\00t\00 \00b\00u\00f\00f\00e\00r\00 \00i\00s\00 \00o\00n\00l\00y\00 ")
 (data $89 (i32.const 7644) ",")
 (data $89.1 (i32.const 7656) "\02\00\00\00\0e\00\00\00 \00b\00y\00t\00e\00s\00.")
 (data $90 (i32.const 7692) "\1c\00\00\00\03\00\00\00\00\00\00\00\05\00\00\00\0c\00\00\00\b0\1d\00\00\00\00\00\00\f0\1d")
 (data $91 (i32.const 7724) "\8c")
 (data $91.1 (i32.const 7736) "\02\00\00\00t\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00b\00u\00f\00f\00e\00r\00/\00B\00y\00t\00e\00s\00R\00e\00a\00d\00e\00r\00.\00t\00s")
 (data $92 (i32.const 7868) "\1c")
 (data $92.1 (i32.const 7880) "\01")
 (data $93 (i32.const 7900) "L")
 (data $93.1 (i32.const 7912) "\02\00\00\006\00\00\00C\00a\00n\00n\00o\00t\00 \00m\00o\00d\00i\00f\00y\00 \00a\00d\00d\00r\00e\00s\00s\00 \00d\00a\00t\00a\00.")
 (data $94 (i32.const 7980) "<")
 (data $94.1 (i32.const 7992) "\02\00\00\00(\00\00\00C\00h\00a\00i\00n\00 \00i\00d\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $95 (i32.const 8044) "|")
 (data $95.1 (i32.const 8056) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
 (data $96 (i32.const 8172) "L")
 (data $96.1 (i32.const 8184) "\02\00\00\00.\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00i\00n\00 \00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $97 (i32.const 8252) "\8c")
 (data $97.1 (i32.const 8264) "\02\00\00\00n\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00s\00c\00r\00i\00p\00t\00/\00N\00e\00t\00w\00o\00r\00k\00s\00.\00t\00s")
 (data $98 (i32.const 8396) "<")
 (data $98.1 (i32.const 8408) "\02\00\00\00 \00\00\00U\00n\00k\00n\00o\00w\00n\00 \00c\00h\00a\00i\00n\00 \00i\00d")
 (data $99 (i32.const 8460) "|")
 (data $99.1 (i32.const 8472) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $100 (i32.const 8588) ",")
 (data $100.1 (i32.const 8600) "\02\00\00\00\14\00\00\00d\00e\00p\00l\00o\00y\00e\00r\00(\00)")
 (data $101 (i32.const 8636) "l")
 (data $101.1 (i32.const 8648) "\02\00\00\00T\00\00\00b\00y\00t\00e\00s\00T\00o\00U\003\002\00:\00 \00i\00n\00p\00u\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00a\00t\00 \00l\00e\00a\00s\00t\00 \004\00 \00b\00y\00t\00e\00s")
 (data $102 (i32.const 8748) "|")
 (data $102.1 (i32.const 8760) "\02\00\00\00d\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00m\00a\00t\00h\00/\00b\00y\00t\00e\00s\00.\00t\00s")
 (data $103 (i32.const 8876) "<")
 (data $103.1 (i32.const 8888) "\02\00\00\00(\00\00\00D\00e\00p\00l\00o\00y\00e\00r\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $104 (i32.const 8940) "<")
 (data $104.1 (i32.const 8952) "\02\00\00\00(\00\00\00A\00d\00d\00r\00e\00s\00s\00 \00i\00s\00 \00t\00o\00o\00 \00l\00o\00n\00g\00 ")
 (data $105 (i32.const 9004) "\1c")
 (data $105.1 (i32.const 9016) "\02\00\00\00\06\00\00\00 \00>\00 ")
 (data $106 (i32.const 9036) "\1c")
 (data $106.1 (i32.const 9048) "\02\00\00\00\0c\00\00\00 \00b\00y\00t\00e\00s")
 (data $107 (i32.const 9068) ",\00\00\00\03\00\00\00\00\00\00\00\05\00\00\00\14\00\00\00\00#\00\00\00\00\00\00@#\00\00\00\00\00\00`#")
 (data $108 (i32.const 9116) "\8c")
 (data $108.1 (i32.const 9128) "\02\00\00\00t\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00b\00u\00f\00f\00e\00r\00/\00B\00y\00t\00e\00s\00W\00r\00i\00t\00e\00r\00.\00t\00s")
 (data $109 (i32.const 9260) "L")
 (data $109.1 (i32.const 9272) "\02\00\00\008\00\00\00B\00y\00t\00e\00s\00W\00r\00i\00t\00e\00r\00:\00 \00o\00f\00f\00s\00e\00t\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data $110 (i32.const 9340) "\8c")
 (data $110.1 (i32.const 9352) "\02\00\00\00p\00\00\00B\00u\00f\00f\00e\00r\00 \00i\00s\00 \00g\00e\00t\00t\00i\00n\00g\00 \00r\00e\00s\00i\00z\00e\00d\00.\00 \00T\00h\00i\00s\00 \00i\00s\00 \00b\00a\00d\00 \00f\00o\00r\00 \00p\00e\00r\00f\00o\00r\00m\00a\00n\00c\00e\00.\00 ")
 (data $111 (i32.const 9484) "<")
 (data $111.1 (i32.const 9496) "\02\00\00\00\1e\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00s\00i\00z\00e\00:\00 ")
 (data $112 (i32.const 9548) "\1c")
 (data $112.1 (i32.const 9560) "\02\00\00\00\06\00\00\00 \00-\00 ")
 (data $113 (i32.const 9580) "\1c\00\00\00\03\00\00\00\00\00\00\00\05\00\00\00\0c\00\00\00 %\00\00\00\00\00\00`%")
 (data $114 (i32.const 9612) ",")
 (data $114.1 (i32.const 9624) "\02\00\00\00\1c\00\00\00C\00u\00r\00r\00e\00n\00t\00 \00s\00i\00z\00e\00:\00 ")
 (data $115 (i32.const 9660) "<")
 (data $115.1 (i32.const 9672) "\02\00\00\00$\00\00\00M\00e\00t\00h\00o\00d\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00:\00 ")
 (data $116 (i32.const 9724) "\8c")
 (data $116.1 (i32.const 9736) "\02\00\00\00p\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00c\00o\00n\00t\00r\00a\00c\00t\00s\00/\00O\00P\00_\00N\00E\00T\00.\00t\00s")
 (data $117 (i32.const 9868) "L")
 (data $117.1 (i32.const 9880) "\02\00\00\00:\00\00\00P\00o\00i\00n\00t\00e\00r\00 \00m\00u\00s\00t\00 \00b\00e\00 \003\002\00 \00b\00y\00t\00e\00s\00 \00l\00o\00n\00g")
 (data $118 (i32.const 9948) "\\")
 (data $118.1 (i32.const 9960) "\02\00\00\00B\00\00\00K\00e\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 \00m\00a\00p\00 \00(\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00)")
 (data $119 (i32.const 10044) "\8c")
 (data $119.1 (i32.const 10056) "\02\00\00\00z\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00g\00e\00n\00e\00r\00i\00c\00/\00M\00a\00p\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00.\00t\00s")
 (data $120 (i32.const 10188) "L")
 (data $120.1 (i32.const 10200) "\02\00\00\00.\00\00\00R\00e\00e\00n\00t\00r\00a\00n\00c\00y\00G\00u\00a\00r\00d\00:\00 \00L\00O\00C\00K\00E\00D")
 (data $121 (i32.const 10268) "\9c")
 (data $121.1 (i32.const 10280) "\02\00\00\00\82\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00c\00o\00n\00t\00r\00a\00c\00t\00s\00/\00R\00e\00e\00n\00t\00r\00a\00n\00c\00y\00G\00u\00a\00r\00d\00.\00t\00s")
 (data $122 (i32.const 10428) "\\")
 (data $122.1 (i32.const 10440) "\02\00\00\00F\00\00\00R\00e\00e\00n\00t\00r\00a\00n\00c\00y\00G\00u\00a\00r\00d\00:\00 \00M\00a\00x\00 \00d\00e\00p\00t\00h\00 \00e\00x\00c\00e\00e\00d\00e\00d")
 (data $123 (i32.const 10524) "L")
 (data $123.1 (i32.const 10536) "\02\00\00\006\00\00\00S\00a\00f\00e\00M\00a\00t\00h\00:\00 \00a\00d\00d\00i\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data $124 (i32.const 10604) "L")
 (data $124.1 (i32.const 10616) "\02\00\00\00.\00\00\00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $125 (i32.const 10684) "\\")
 (data $125.1 (i32.const 10696) "\02\00\00\00D\00\00\00O\00n\00l\00y\00 \00d\00e\00p\00l\00o\00y\00e\00r\00 \00c\00a\00n\00 \00c\00a\00l\00l\00 \00t\00h\00i\00s\00 \00m\00e\00t\00h\00o\00d")
 (data $126 (i32.const 10780) "\\")
 (data $126.1 (i32.const 10792) "\02\00\00\00H\00\00\00O\00r\00d\00i\00n\00a\00l\00s\00V\00a\00u\00l\00t\00:\00 \00b\00u\00r\00n\00 \00a\00l\00r\00e\00a\00d\00y\00 \00r\00e\00c\00o\00r\00d\00e\00d")
 (data $127 (i32.const 10876) "L")
 (data $127.1 (i32.const 10888) "\02\00\00\00:\00\00\00s\00r\00c\00/\00c\00o\00n\00t\00r\00a\00c\00t\00/\00O\00r\00d\00i\00n\00a\00l\00s\00V\00a\00u\00l\00t\00.\00t\00s")
 (data $128 (i32.const 10956) "l")
 (data $128.1 (i32.const 10968) "\02\00\00\00R\00\00\00O\00r\00d\00i\00n\00a\00l\00s\00V\00a\00u\00l\00t\00:\00 \00i\00n\00s\00c\00r\00i\00p\00t\00i\00o\00n\00 \00a\00l\00r\00e\00a\00d\00y\00 \00m\00i\00n\00t\00e\00d")
 (data $129 (i32.const 11068) "<")
 (data $129.1 (i32.const 11080) "\02\00\00\00\"\00\00\00B\00l\00o\00c\00k\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $130 (i32.const 11132) "l")
 (data $130.1 (i32.const 11144) "\02\00\00\00T\00\00\00O\00r\00d\00i\00n\00a\00l\00s\00V\00a\00u\00l\00t\00:\00 \00b\00u\00r\00n\00 \00n\00o\00t\00 \00v\00e\00r\00i\00f\00i\00e\00d\00 \00b\00y\00 \00o\00r\00a\00c\00l\00e")
 (data $131 (i32.const 11244) "|")
 (data $131.1 (i32.const 11256) "\02\00\00\00`\00\00\00O\00r\00d\00i\00n\00a\00l\00s\00V\00a\00u\00l\00t\00:\00 \00c\00a\00l\00l\00e\00r\00 \00i\00s\00 \00n\00o\00t\00 \00t\00h\00e\00 \00o\00r\00i\00g\00i\00n\00a\00l\00 \00b\00u\00r\00n\00e\00r")
 (data $132 (i32.const 11372) "\8c")
 (data $132.1 (i32.const 11384) "\02\00\00\00p\00\00\00O\00r\00d\00i\00n\00a\00l\00s\00V\00a\00u\00l\00t\00:\00 \00m\00u\00s\00t\00 \00w\00a\00i\00t\00 \001\00 \00b\00l\00o\00c\00k\00 \00c\00o\00n\00f\00i\00r\00m\00a\00t\00i\00o\00n\00 \00a\00f\00t\00e\00r\00 \00b\00u\00r\00n")
 (data $133 (i32.const 11516) "\\")
 (data $133.1 (i32.const 11528) "\02\00\00\00B\00\00\00O\00r\00d\00i\00n\00a\00l\00s\00V\00a\00u\00l\00t\00:\00 \00m\00a\00x\00 \00s\00u\00p\00p\00l\00y\00 \00r\00e\00a\00c\00h\00e\00d")
 (data $134 (i32.const 11612) "\1c")
 (data $134.1 (i32.const 11624) "\01")
 (data $135 (i32.const 11644) "L")
 (data $135.1 (i32.const 11656) "\02\00\00\006\00\00\00C\00a\00n\00n\00o\00t\00 \00m\00i\00n\00t\00 \00t\00o\00 \00z\00e\00r\00o\00 \00a\00d\00d\00r\00e\00s\00s")
 (data $136 (i32.const 11724) "\8c")
 (data $136.1 (i32.const 11736) "\02\00\00\00n\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00c\00o\00n\00t\00r\00a\00c\00t\00s\00/\00O\00P\007\002\001\00.\00t\00s")
 (data $137 (i32.const 11868) "<")
 (data $137.1 (i32.const 11880) "\02\00\00\00(\00\00\00T\00o\00k\00e\00n\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s")
 (data $138 (i32.const 11932) "<")
 (data $138.1 (i32.const 11944) "\02\00\00\00$\00\00\00M\00a\00x\00 \00s\00u\00p\00p\00l\00y\00 \00r\00e\00a\00c\00h\00e\00d")
 (data $139 (i32.const 11996) "<")
 (data $139.1 (i32.const 12008) "\02\00\00\00\"\00\00\00S\00t\00o\00r\00e\00d\00P\00a\00c\00k\00e\00d\00A\00r\00r\00a\00y")
 (data $140 (i32.const 12060) "\\")
 (data $140.1 (i32.const 12072) "\02\00\00\00F\00\00\00b\00i\00g\00E\00n\00d\00i\00a\00n\00A\00d\00d\00:\00 \00b\00a\00s\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \003\002\00 \00b\00y\00t\00e\00s")
 (data $141 (i32.const 12156) "l")
 (data $141.1 (i32.const 12168) "\02\00\00\00N\00\00\00a\00d\00d\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00s\00B\00E\00 \00e\00x\00p\00e\00c\00t\00s\00 \003\002\00-\00b\00y\00t\00e\00 \00i\00n\00p\00u\00t\00s")
 (data $142 (i32.const 12268) "\1c")
 (data $142.1 (i32.const 12280) "\01\00\00\00\08")
 (data $143 (i32.const 12300) "<")
 (data $143.1 (i32.const 12312) "\02\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data $144 (i32.const 12364) ",")
 (data $144.1 (i32.const 12376) "\02\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data $145 (i32.const 12412) "\\")
 (data $145.1 (i32.const 12424) "\02\00\00\00D\00\00\00p\00u\00s\00h\00:\00 \00a\00r\00r\00a\00y\00 \00h\00a\00s\00 \00r\00e\00a\00c\00h\00e\00d\00 \00M\00A\00X\00_\00L\00E\00N\00G\00T\00H")
 (data $146 (i32.const 12508) "\ac")
 (data $146.1 (i32.const 12520) "\02\00\00\00\90\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00s\00t\00o\00r\00a\00g\00e\00/\00a\00r\00r\00a\00y\00s\00/\00S\00t\00o\00r\00e\00d\00P\00a\00c\00k\00e\00d\00A\00r\00r\00a\00y\00.\00t\00s")
 (data $147 (i32.const 12684) "<")
 (data $147.1 (i32.const 12696) "\02\00\00\00 \00\00\00A\00d\00d\00r\00e\00s\00s\00M\00e\00m\00o\00r\00y\00M\00a\00p")
 (data $148 (i32.const 12748) "l")
 (data $148.1 (i32.const 12760) "\02\00\00\00R\00\00\00E\00v\00e\00n\00t\00 \00d\00a\00t\00a\00 \00l\00e\00n\00g\00t\00h\00 \00e\00x\00c\00e\00e\00d\00s\00 \00m\00a\00x\00i\00m\00u\00m\00 \00l\00e\00n\00g\00t\00h\00.")
 (data $149 (i32.const 12860) "\8c")
 (data $149.1 (i32.const 12872) "\02\00\00\00n\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00e\00v\00e\00n\00t\00s\00/\00N\00e\00t\00E\00v\00e\00n\00t\00.\00t\00s")
 (data $150 (i32.const 13004) ",")
 (data $150.1 (i32.const 13016) "\02\00\00\00\16\00\00\00T\00r\00a\00n\00s\00f\00e\00r\00r\00e\00d")
 (data $151 (i32.const 13052) "<")
 (data $151.1 (i32.const 13064) "\02\00\00\00*\00\00\00B\00u\00f\00f\00e\00r\00 \00i\00s\00 \00n\00o\00t\00 \00d\00e\00f\00i\00n\00e\00d")
 (data $152 (i32.const 13116) "<")
 (data $152.1 (i32.const 13128) "\02\00\00\00(\00\00\00T\00o\00k\00e\00n\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data $153 (i32.const 13180) "L")
 (data $153.1 (i32.const 13192) "\02\00\00\004\00\00\00U\00R\00I\00 \00e\00x\00c\00e\00e\00d\00s\00 \00m\00a\00x\00i\00m\00u\00m\00 \00l\00e\00n\00g\00t\00h")
 (data $154 (i32.const 13260) "L")
 (data $154.1 (i32.const 13272) "\02\00\00\002\00\00\00:\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00t\00o\00o\00 \00l\00o\00n\00g\00 \00(\00m\00a\00x\00=")
 (data $155 (i32.const 13340) ",\00\00\00\03\00\00\00\00\00\00\00\05\00\00\00\10\00\00\00\00\00\00\00\e03\00\00\00\00\00\00\80\n")
 (data $156 (i32.const 13388) "\9c")
 (data $156.1 (i32.const 13400) "\02\00\00\00\80\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00s\00t\00o\00r\00a\00g\00e\00/\00B\00a\00s\00e\00S\00t\00o\00r\00e\00d\00S\00t\00r\00i\00n\00g\00.\00t\00s")
 (data $157 (i32.const 13548) "\\")
 (data $157.1 (i32.const 13560) "\02\00\00\00>\00\00\00U\00R\00I\00 \00e\00v\00e\00n\00t\00 \00e\00x\00c\00e\00e\00d\00s\00 \00m\00a\00x\00 \00d\00a\00t\00a\00 \00s\00i\00z\00e")
 (data $158 (i32.const 13644) "\9c")
 (data $158.1 (i32.const 13656) "\02\00\00\00\84\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00e\00v\00e\00n\00t\00s\00/\00p\00r\00e\00d\00e\00f\00i\00n\00e\00d\00/\00U\00R\00I\00E\00v\00e\00n\00t\00.\00t\00s")
 (data $159 (i32.const 13804) "\1c")
 (data $159.1 (i32.const 13816) "\02\00\00\00\06\00\00\00U\00R\00I")
 (data $160 (i32.const 13836) "l")
 (data $160.1 (i32.const 13848) "\02\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006")
 (data $161 (i32.const 13948) "<")
 (data $161.1 (i32.const 13960) "\02\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f")
 (data $162 (i32.const 14012) "l")
 (data $162.1 (i32.const 14024) "\02\00\00\00X\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00u\00t\00i\00l\00s\00.\00t\00s")
 (data $163 (i32.const 14124) "<")
 (data $163.1 (i32.const 14136) "\02\00\00\00(\00\00\00I\00c\00o\00n\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y")
 (data $164 (i32.const 14188) "<")
 (data $164.1 (i32.const 14200) "\02\00\00\00,\00\00\00B\00a\00n\00n\00e\00r\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y")
 (data $165 (i32.const 14252) "L")
 (data $165.1 (i32.const 14264) "\02\00\00\006\00\00\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y")
 (data $166 (i32.const 14332) "L")
 (data $166.1 (i32.const 14344) "\02\00\00\00.\00\00\00W\00e\00b\00s\00i\00t\00e\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y")
 (data $167 (i32.const 14412) "<")
 (data $167.1 (i32.const 14424) "\02\00\00\00\1e\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00a\00d\00d\00r\00e\00s\00s")
 (data $168 (i32.const 14476) "\1c")
 (data $168.1 (i32.const 14488) "\01")
 (data $169 (i32.const 14508) "L")
 (data $169.1 (i32.const 14520) "\02\00\00\00:\00\00\00T\00r\00a\00n\00s\00f\00e\00r\00 \00f\00r\00o\00m\00 \00i\00n\00c\00o\00r\00r\00e\00c\00t\00 \00o\00w\00n\00e\00r")
 (data $170 (i32.const 14588) "L")
 (data $170.1 (i32.const 14600) "\02\00\00\000\00\00\00T\00r\00a\00n\00s\00f\00e\00r\00 \00t\00o\00 \00z\00e\00r\00o\00 \00a\00d\00d\00r\00e\00s\00s")
 (data $171 (i32.const 14668) "L")
 (data $171.1 (i32.const 14680) "\02\00\00\004\00\00\00K\00e\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 \00m\00a\00p\00 \00(\00M\00a\00p\00)")
 (data $172 (i32.const 14748) "|")
 (data $172.1 (i32.const 14760) "\02\00\00\00f\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00g\00e\00n\00e\00r\00i\00c\00/\00M\00a\00p\00.\00t\00s")
 (data $173 (i32.const 14876) "L")
 (data $173.1 (i32.const 14888) "\02\00\00\004\00\00\00N\00o\00t\00 \00a\00u\00t\00h\00o\00r\00i\00z\00e\00d\00 \00t\00o\00 \00t\00r\00a\00n\00s\00f\00e\00r")
 (data $174 (i32.const 14956) "<")
 (data $174.1 (i32.const 14968) "\02\00\00\00(\00\00\00T\00o\00k\00e\00n\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data $175 (i32.const 15020) "<")
 (data $175.1 (i32.const 15032) "\02\00\00\00\"\00\00\00g\00e\00t\00:\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $176 (i32.const 15084) "l")
 (data $176.1 (i32.const 15096) "\02\00\00\00X\00\00\00s\00e\00t\00:\00 \00i\00n\00d\00e\00x\00 \00e\00x\00c\00e\00e\00d\00s\00 \00M\00A\00X\00_\00L\00E\00N\00G\00T\00H\00 \00(\00p\00a\00c\00k\00e\00d\00 \00a\00r\00r\00a\00y\00)")
 (data $177 (i32.const 15196) "l")
 (data $177.1 (i32.const 15208) "\02\00\00\00R\00\00\00d\00e\00l\00e\00t\00e\00L\00a\00s\00t\00:\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00 \00(\00p\00a\00c\00k\00e\00d\00 \00a\00r\00r\00a\00y\00)")
 (data $178 (i32.const 15308) "\\")
 (data $178.1 (i32.const 15320) "\02\00\00\00>\00\00\00S\00a\00f\00e\00M\00a\00t\00h\00:\00 \00s\00u\00b\00t\00r\00a\00c\00t\00i\00o\00n\00 \00u\00n\00d\00e\00r\00f\00l\00o\00w")
 (data $179 (i32.const 15404) "\\")
 (data $179.1 (i32.const 15416) "\02\00\00\00@\00\00\00D\00e\00s\00t\00i\00n\00a\00t\00i\00o\00n\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $180 (i32.const 15500) "L")
 (data $180.1 (i32.const 15512) "\02\00\00\00<\00\00\00T\00r\00a\00n\00s\00f\00e\00r\00 \00r\00e\00j\00e\00c\00t\00e\00d\00 \00b\00y\00 \00r\00e\00c\00i\00p\00i\00e\00n\00t")
 (data $181 (i32.const 15580) "L")
 (data $181.1 (i32.const 15592) "\02\00\00\006\00\00\00C\00a\00n\00n\00o\00t\00 \00a\00p\00p\00r\00o\00v\00e\00 \00z\00e\00r\00o\00 \00a\00d\00d\00r\00e\00s\00s")
 (data $182 (i32.const 15660) "L")
 (data $182.1 (i32.const 15672) "\02\00\00\002\00\00\00A\00p\00p\00r\00o\00v\00a\00l\00 \00t\00o\00 \00c\00u\00r\00r\00e\00n\00t\00 \00o\00w\00n\00e\00r")
 (data $183 (i32.const 15740) "L")
 (data $183.1 (i32.const 15752) "\02\00\00\002\00\00\00N\00o\00t\00 \00a\00u\00t\00h\00o\00r\00i\00z\00e\00d\00 \00t\00o\00 \00a\00p\00p\00r\00o\00v\00e")
 (data $184 (i32.const 15820) ",")
 (data $184.1 (i32.const 15832) "\02\00\00\00\10\00\00\00A\00p\00p\00r\00o\00v\00e\00d")
 (data $185 (i32.const 15868) "<")
 (data $185.1 (i32.const 15880) "\02\00\00\00&\00\00\00C\00a\00n\00n\00o\00t\00 \00a\00p\00p\00r\00o\00v\00e\00 \00s\00e\00l\00f")
 (data $186 (i32.const 15932) "<")
 (data $186.1 (i32.const 15944) "\02\00\00\00 \00\00\00i\00n\00v\00a\00l\00i\00d\00 \00d\00o\00w\00n\00c\00a\00s\00t")
 (data $187 (i32.const 15996) "\8c")
 (data $187.1 (i32.const 16008) "\02\00\00\00n\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00m\00e\00m\00o\00r\00y\00/\00M\00a\00p\00O\00f\00M\00a\00p\00.\00t\00s")
 (data $188 (i32.const 16140) ",")
 (data $188.1 (i32.const 16152) "\02\00\00\00\1c\00\00\00A\00p\00p\00r\00o\00v\00e\00d\00F\00o\00r\00A\00l\00l")
 (data $189 (i32.const 16188) "<")
 (data $189.1 (i32.const 16200) "\02\00\00\00\1e\00\00\00N\00o\00t\00 \00t\00o\00k\00e\00n\00 \00o\00w\00n\00e\00r")
 (data $190 (i32.const 16252) "L")
 (data $190.1 (i32.const 16264) "\02\00\00\000\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00s\00i\00g\00n\00a\00t\00u\00r\00e\00 \00l\00e\00n\00g\00t\00h")
 (data $191 (i32.const 16332) "<")
 (data $191.1 (i32.const 16344) "\02\00\00\00\"\00\00\00S\00i\00g\00n\00a\00t\00u\00r\00e\00 \00e\00x\00p\00i\00r\00e\00d")
 (data $192 (i32.const 16396) "L")
 (data $192.1 (i32.const 16408) "\02\00\00\00.\00\00\00P\00r\00o\00t\00o\00c\00o\00l\00 \00i\00d\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $193 (i32.const 16476) "L")
 (data $193.1 (i32.const 16488) "\02\00\00\008\00\00\00C\00o\00n\00t\00r\00a\00c\00t\00 \00a\00d\00d\00r\00e\00s\00s\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d")
 (data $194 (i32.const 16556) "L")
 (data $194.1 (i32.const 16568) "\02\00\00\002\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00s\00i\00g\00n\00a\00t\00u\00r\00e\00 \00l\00e\00n\00g\00t\00h\00.")
 (data $195 (i32.const 16636) "<")
 (data $195.1 (i32.const 16648) "\02\00\00\00(\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00h\00a\00s\00h\00 \00l\00e\00n\00g\00t\00h\00.")
 (data $196 (i32.const 16700) "L")
 (data $196.1 (i32.const 16712) "\02\00\00\00:\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00M\00L\00-\00D\00S\00A\00 \00s\00e\00c\00u\00r\00i\00t\00y\00 \00l\00e\00v\00e\00l")
 (data $197 (i32.const 16780) "\9c")
 (data $197.1 (i32.const 16792) "\02\00\00\00\86\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00e\00n\00v\00/\00c\00o\00n\00s\00e\00n\00s\00u\00s\00/\00M\00L\00D\00S\00A\00M\00e\00t\00a\00d\00a\00t\00a\00.\00t\00s")
 (data $198 (i32.const 16940) "L")
 (data $198.1 (i32.const 16952) "\02\00\00\006\00\00\00M\00L\00-\00D\00S\00A\00 \00p\00u\00b\00l\00i\00c\00 \00k\00e\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data $199 (i32.const 17020) "|")
 (data $199.1 (i32.const 17032) "\02\00\00\00d\00\00\00~\00l\00i\00b\00/\00@\00b\00t\00c\00-\00v\00i\00s\00i\00o\00n\00/\00b\00t\00c\00-\00r\00u\00n\00t\00i\00m\00e\00/\00r\00u\00n\00t\00i\00m\00e\00/\00e\00n\00v\00/\00g\00l\00o\00b\00a\00l\00.\00t\00s")
 (data $200 (i32.const 17148) "\\")
 (data $200.1 (i32.const 17160) "\02\00\00\00B\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00M\00L\00-\00D\00S\00A\00 \00p\00u\00b\00l\00i\00c\00 \00k\00e\00y\00 \00l\00e\00n\00g\00t\00h\00.")
 (data $201 (i32.const 17244) "\\")
 (data $201.1 (i32.const 17256) "\02\00\00\00@\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00M\00L\00-\00D\00S\00A\00 \00s\00i\00g\00n\00a\00t\00u\00r\00e\00 \00l\00e\00n\00g\00t\00h\00.")
 (data $202 (i32.const 17340) "<")
 (data $202.1 (i32.const 17352) "\02\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00s\00i\00g\00n\00a\00t\00u\00r\00e")
 (data $203 (i32.const 17404) "<")
 (data $203.1 (i32.const 17416) "\02\00\00\00,\00\00\00N\00o\00t\00 \00a\00u\00t\00h\00o\00r\00i\00z\00e\00d\00 \00t\00o\00 \00b\00u\00r\00n")
 (data $204 (i32.const 17468) "<")
 (data $204.1 (i32.const 17480) "\02\00\00\00&\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00b\00o\00u\00n\00d\00s")
 (data $205 (i32.const 17532) "L")
 (data $205.1 (i32.const 17544) "\02\00\00\000\00\00\00B\00a\00s\00e\00 \00U\00R\00I\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y")
 (data $206 (i32.const 17612) "\\")
 (data $206.1 (i32.const 17624) "\02\00\00\00>\00\00\00B\00a\00s\00e\00 \00U\00R\00I\00 \00e\00x\00c\00e\00e\00d\00s\00 \00m\00a\00x\00i\00m\00u\00m\00 \00l\00e\00n\00g\00t\00h")
 (data $207 (i32.const 17708) "\\")
 (data $207.1 (i32.const 17720) "\02\00\00\00@\00\00\00R\00e\00e\00n\00t\00r\00a\00n\00c\00y\00G\00u\00a\00r\00d\00:\00 \00D\00e\00p\00t\00h\00 \00u\00n\00d\00e\00r\00f\00l\00o\00w")
 (data $208 (i32.const 17804) "<")
 (data $208.1 (i32.const 17816) "\02\00\00\00&\00\00\00A\00l\00r\00e\00a\00d\00y\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d")
 (data $209 (i32.const 17868) "<")
 (data $209.1 (i32.const 17880) "\02\00\00\00(\00\00\00N\00a\00m\00e\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y")
 (data $210 (i32.const 17932) "<")
 (data $210.1 (i32.const 17944) "\02\00\00\00,\00\00\00S\00y\00m\00b\00o\00l\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y")
 (data $211 (i32.const 17996) "L")
 (data $211.1 (i32.const 18008) "\02\00\00\002\00\00\00M\00a\00x\00 \00s\00u\00p\00p\00l\00y\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00z\00e\00r\00o")
 (data $212 (i32.const 18076) ",")
 (data $212.1 (i32.const 18088) "\02\00\00\00\18\00\00\00S\00t\00o\00r\00e\00d\00S\00t\00r\00i\00n\00g")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $start:src/index~anonymous|0)
 (export "abort" (func $src/index/abort))
 (export "execute" (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/execute))
 (export "onDeploy" (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/onDeploy))
 (export "onUpdate" (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/onUpdate))
 (export "memory" (memory $0))
 (export "start" (func $~start))
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 10
   i32.ge_u
   i32.const 1
   i32.add
   local.get $0
   i32.const 10000
   i32.ge_u
   i32.const 3
   i32.add
   local.get $0
   i32.const 1000
   i32.ge_u
   i32.add
   local.get $0
   i32.const 100
   i32.lt_u
   select
  else
   local.get $0
   i32.const 1000000
   i32.ge_u
   i32.const 6
   i32.add
   local.get $0
   i32.const 1000000000
   i32.ge_u
   i32.const 8
   i32.add
   local.get $0
   i32.const 100000000
   i32.ge_u
   i32.add
   local.get $0
   i32.const 10000000
   i32.lt_u
   select
  end
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  loop $do-loop|0
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   i32.const 10
   i32.div_u
   local.tee $1
   br_if $do-loop|0
  end
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1904
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.tee $1
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $2
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const -2
  i32.and
  local.tee $2
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const -2
  i32.and
  local.tee $3
  i32.add
  local.tee $4
  i32.eqz
  if
   i32.const 2032
   return
  end
  local.get $4
  i32.const 2
  call $~lib/rt/stub/__new
  local.tee $4
  local.get $0
  local.get $2
  memory.copy
  local.get $2
  local.get $4
  i32.add
  local.get $1
  local.get $3
  memory.copy
  local.get $4
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>$14 (result i32)
   i32.const 2032
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 0
   i32.lt_s
   br_if $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>$14
   drop
   local.get $2
   i32.eqz
   if
    local.get $0
    i32.load
    local.tee $0
    i32.const 2032
    local.get $0
    select
    br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>$14
   end
   i32.const 2032
   local.set $0
   i32.const 2028
   i32.load
   i32.const 1
   i32.shr_u
   local.set $4
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.gt_s
    if
     local.get $1
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $5
     if
      local.get $0
      local.get $5
      call $~lib/string/String#concat
      local.set $0
     end
     local.get $4
     if
      local.get $0
      i32.const 2032
      call $~lib/string/String#concat
      local.set $0
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   local.get $1
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    call $~lib/string/String#concat
   else
    local.get $0
   end
  end
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.get $0
      i32.const 2
      i32.add
      local.get $2
      i32.lt_u
      i32.and
      if
       local.get $0
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $1
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $2
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $2
      i32.const 56320
      i32.lt_u
      local.get $0
      i32.const 2
      i32.add
      local.get $3
      i32.lt_u
      i32.and
      local.get $2
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      i32.and
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $4
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        local.get $2
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $4
        i32.const 1023
        i32.and
        i32.or
        local.tee $2
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $2
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $2
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $2
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      local.get $2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/string/String.UTF8.encode@varargs (param $0 i32) (result i32)
  (local $1 i32)
  block $2of2
   block $outOfRange
    global.get $~argumentsLength
    i32.const 1
    i32.sub
    br_table $2of2 $2of2 $2of2 $outOfRange
   end
   unreachable
  end
  local.get $0
  call $~lib/string/String.UTF8.byteLength
  i32.const 1
  call $~lib/rt/stub/__new
  local.set $1
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.get $1
  call $~lib/string/String.UTF8.encodeUnsafe
  local.get $1
 )
 (func $~lib/typedarray/Uint8Array.wrap@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $2
   i32.const -1
   i32.ne
   if
    i32.const 2304
    i32.const 2240
    i32.const 1869
    i32.const 7
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $1
   local.set $2
  else
   local.get $1
   local.get $2
   i32.lt_s
   if
    i32.const 2304
    i32.const 2240
    i32.const 1874
    i32.const 7
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
  end
  i32.const 12
  i32.const 7
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2304
   i32.const 2352
   i32.const 52
   i32.const 43
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/dataview/DataView#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   local.set $2
  end
  i32.const 12
  i32.const 8
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.gt_u
  local.get $2
  i32.const 1073741820
  i32.gt_u
  i32.or
  if
   i32.const 2304
   i32.const 2416
   i32.const 25
   i32.const 7
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
 )
 (func $~lib/polyfills/bswap<u32> (param $0 i32) (result i32)
  local.get $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
 )
 (func $~lib/dataview/DataView#setUint32 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.const 31
  i32.shr_u
  local.get $0
  i32.load offset=8
  local.get $1
  i32.const 4
  i32.add
  i32.lt_s
  i32.or
  if
   i32.const 2176
   i32.const 2416
   i32.const 142
   i32.const 7
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  call $~lib/polyfills/bswap<u32>
  i32.store
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2176
   i32.const 2240
   i32.const 167
   i32.const 45
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/dataview/DataView#setUint8 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2176
   i32.const 2416
   i32.const 128
   i32.const 50
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/util/number/utoa32
  local.set $2
  local.get $3
  call $~lib/util/number/utoa32
  local.set $3
  i32.const 1120
  i32.const 0
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 1120
  i32.const 2
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 1120
  i32.const 4
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 1120
  i32.const 6
  local.get $3
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 1120
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  i32.const 1
  global.set $~argumentsLength
  call $~lib/string/String.UTF8.encode@varargs
  i32.const 1
  global.set $~argumentsLength
  call $~lib/typedarray/Uint8Array.wrap@varargs
  local.tee $0
  i32.load offset=8
  i32.const 8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  call $~lib/dataview/DataView#constructor@varargs
  local.tee $2
  i32.const 0
  i32.const 1668521308
  call $~lib/dataview/DataView#setUint32
  local.get $2
  i32.const 4
  local.get $0
  i32.load offset=8
  call $~lib/dataview/DataView#setUint32
  loop $for-loop|0
   local.get $4
   local.get $0
   i32.load offset=8
   i32.lt_s
   if
    local.get $2
    local.get $4
    i32.const 8
    i32.add
    local.get $0
    local.get $4
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/dataview/DataView#setUint8
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 1
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/env_exit
 )
 (func $src/index/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  local.get $0
  i32.lt_u
  if
   local.get $1
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2480
   i32.const 2544
   i32.const 33
   i32.const 29
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $0
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $0
  i32.store
  local.get $2
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 2480
   i32.const 2544
   i32.const 86
   i32.const 30
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/stub/__alloc
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u128/u128#constructor (param $0 i64) (param $1 i64) (result i32)
  (local $2 i32)
  i32.const 16
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i64.store
  local.get $2
  local.get $1
  i64.store offset=8
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 7
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 3
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2304
   i32.const 2352
   i32.const 19
   i32.const 57
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  local.get $1
  memory.fill
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1904
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  local.get $0
  local.get $0
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $3
  select
  local.tee $1
  call $~lib/util/number/decimalCount32
  local.tee $0
  i32.const 1
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $3
  i32.add
  local.get $1
  local.get $0
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $3
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#set<~lib/array/Array<u8>> (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load offset=12
  local.tee $2
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 2176
   i32.const 2240
   i32.const 1902
   i32.const 5
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  local.get $2
  memory.copy
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 20
   i32.const 9
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store8 offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $1
  if (result i32)
   local.get $1
   i32.load offset=12
  else
   i32.const 0
  end
  if
   local.get $1
   i32.load offset=12
   i32.const 32
   i32.ne
   if
    i32.const 2720
    i32.const 1
    local.get $1
    i32.load offset=12
    call $~lib/util/number/itoa32
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 2720
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 2752
    i32.const 335
    i32.const 13
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/typedarray/Uint8Array#set<~lib/array/Array<u8>>
   local.get $0
   i32.const 1
   i32.store8 offset=12
  end
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.shl
  local.tee $4
  i32.const 1
  call $~lib/rt/stub/__new
  local.set $1
  local.get $3
  if
   local.get $1
   local.get $3
   local.get $4
   memory.copy
  end
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $1
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $4
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#set<~lib/array/Array<i32>> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=12
  local.tee $3
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 2176
   i32.const 2240
   i32.const 1902
   i32.const 5
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $0
  local.get $1
  i32.load offset=4
  local.set $1
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $1
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2176
   i32.const 2240
   i32.const 178
   i32.const 45
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 24
  i32.const 15
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store offset=20
  local.get $2
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor
  local.set $1
  local.get $0
  i32.load offset=12
  i32.const 32
  i32.ne
  if
   i32.const 3776
   i32.const 3888
   i32.const 70
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  i32.store offset=20
  local.get $1
  i32.load offset=20
  local.get $0
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<u8>>
  local.get $1
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 10
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2304
   i32.const 4032
   i32.const 70
   i32.const 60
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 8
  local.get $0
  local.get $0
  i32.const 8
  i32.le_u
  select
  local.tee $2
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  local.get $2
  memory.fill
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/rt/stub/__realloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   i32.const 2544
   i32.const 45
   i32.const 3
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  i32.const 4
  i32.sub
  local.tee $4
  i32.load
  local.tee $3
  local.get $0
  i32.add
  i32.eq
  local.set $5
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $2
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $5
   if
    local.get $1
    i32.const 1073741820
    i32.gt_u
    if
     i32.const 2480
     i32.const 2544
     i32.const 52
     i32.const 33
     call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
     unreachable
    end
    local.get $0
    local.get $2
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $4
    local.get $2
    i32.store
   else
    local.get $2
    local.get $3
    i32.const 1
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    call $~lib/rt/stub/__alloc
    local.tee $1
    local.get $0
    local.get $3
    memory.copy
    local.get $1
    local.set $0
   end
  else
   local.get $5
   if
    local.get $0
    local.get $2
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $4
    local.get $2
    i32.store
   end
  end
  local.get $0
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 2480
   i32.const 2544
   i32.const 99
   i32.const 30
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  i32.const 16
  i32.add
  call $~lib/rt/stub/__realloc
  local.tee $0
  i32.const 4
  i32.sub
  local.get $1
  i32.store offset=16
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $4
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 2304
    i32.const 4032
    i32.const 19
    i32.const 48
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   local.get $2
   i32.shl
   local.set $1
   local.get $3
   if
    i32.const 1073741820
    local.get $4
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   local.get $0
   i32.load
   local.tee $5
   local.get $1
   call $~lib/rt/stub/__renew
   local.tee $2
   local.get $4
   i32.add
   i32.const 0
   local.get $1
   local.get $4
   i32.sub
   memory.fill
   local.get $2
   local.get $5
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<u8>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 2176
    i32.const 4032
    i32.const 130
    i32.const 22
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 0
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Uint8Array#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  i32.const 0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  memory.copy
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#slice@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $1
   end
   i32.const 2147483647
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint8Array#slice
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#clone (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=20
  i32.load offset=8
  call $~lib/array/Array<u8>#constructor
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=20
   i32.load offset=8
   i32.lt_s
   if
    local.get $3
    local.get $1
    local.get $0
    i32.load offset=20
    local.get $1
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/array/Array<u8>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint8Array#slice@varargs
  local.tee $1
  i32.load offset=8
  call $~lib/array/Array<u8>#constructor
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $1
   i32.load offset=8
   i32.lt_s
   if
    local.get $4
    local.get $2
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $3
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
  local.tee $1
  local.get $0
  i32.load8_u offset=12
  i32.store8 offset=12
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#constructor (result i32)
  (local $0 i32)
  i32.const 12
  i32.const 17
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 19
  i32.const 4080
  call $~lib/rt/__newArray
  i32.store
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 19
  i32.const 4112
  call $~lib/rt/__newArray
  i32.store offset=4
  local.get $0
  i32.const -1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  i32.const 32
  i32.const 25
  call $~lib/rt/stub/__new
  local.tee $4
  local.get $0
  i64.store
  local.get $4
  local.get $1
  i64.store offset=8
  local.get $4
  local.get $2
  i64.store offset=16
  local.get $4
  local.get $3
  i64.store offset=24
  local.get $4
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer (param $0 i32) (result i32)
  local.get $0
  i32.load16_u offset=32
  i32.const 65535
  i32.eq
  if
   i32.const 5152
   i32.const 5232
   i32.const 189
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  local.get $0
  i32.load16_u offset=32
  i32.const 1
  i32.add
  i32.store16 offset=32
  local.get $0
  i32.load16_u offset=32
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor (param $0 i64) (param $1 i64)
  (local $2 i32)
  i32.const 16
  i32.const 33
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i64.store
  local.get $2
  local.get $1
  i64.store offset=8
 )
 (func $start:~lib/@btc-vision/btc-runtime/runtime/index
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 18124
  global.set $~lib/rt/stub/offset
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u128/u128#constructor
  drop
  i64.const 1
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u128/u128#constructor
  drop
  i64.const -1
  i64.const -1
  call $~lib/@btc-vision/as-bignum/assembly/integer/u128/u128#constructor
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 10
  i32.const 2880
  call $~lib/rt/__newArray
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/types/Address/ZERO_ADDRESS
  i32.const 12
  i32.const 12
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 32
  i32.const 2
  i32.const 11
  i32.const 2912
  call $~lib/rt/__newArray
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<i32>>
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  i32.const 32
  i32.const 2
  i32.const 11
  i32.const 3072
  call $~lib/rt/__newArray
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<i32>>
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.const 32
  i32.const 2
  i32.const 11
  i32.const 3232
  call $~lib/rt/__newArray
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<i32>>
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
  global.set $~lib/@btc-vision/btc-runtime/runtime/script/Networks/Network
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_BUFFER
  i32.const 0
  i32.const 30
  call $~lib/typedarray/Uint8Array#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/math/bytes/ONE_BUFFER
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/ONE_BUFFER
  i32.const 31
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3728
  i32.const 3728
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
  drop
  i32.const 3616
  i32.const 3728
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
  drop
  i32.const 256
  call $~lib/arraybuffer/ArrayBuffer#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/SCRATCH_BUF
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/SCRATCH_BUF
  call $~lib/typedarray/Uint8Array.wrap@varargs
  drop
  i32.const 0
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/FOUR_BYTES_UINT8ARRAY_MEMORY_CACHE
  i32.const 52
  i32.const 16
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddressCache/_cachedDeadAddress
  local.tee $1
  i32.eqz
  if
   i32.const 3616
   i32.const 3728
   call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
   local.tee $1
   global.set $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddressCache/_cachedDeadAddress
  end
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#clone
  i32.store
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#constructor
  i32.store offset=4
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#constructor
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const -1
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  i32.const 0
  i32.store16 offset=32
  local.get $0
  i32.const 0
  i32.store offset=36
  local.get $0
  i32.const 0
  i32.store offset=40
  local.get $0
  i32.const 0
  i32.store offset=44
  local.get $0
  i32.const 0
  i32.store offset=48
  local.get $0
  global.set $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  drop
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  drop
  i64.const 2
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  drop
  i64.const 3
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  drop
  i64.const 10
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  drop
  i64.const 65535
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  global.set $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString.MAX_LENGTH_U256
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/statusPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/depthPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor
  i64.const 1
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor
  i64.const -1
  i64.const -1
  call $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor
  i64.const 0
  i64.const -9223372036854775808
  call $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor
  i64.const -1
  i64.const 9223372036854775807
  call $~lib/@btc-vision/as-bignum/assembly/integer/i128/i128#constructor
  block $__inlined_func$start:~lib/@btc-vision/btc-runtime/runtime/secp256k1/ECPoint$37
   block $folding-inner0
    i32.const 5468
    i32.load
    i32.const 32
    i32.ne
    br_if $folding-inner0
    i32.const 5460
    i32.load
    local.tee $0
    i64.load
    local.get $0
    i64.load offset=8
    local.get $0
    i64.load offset=16
    local.get $0
    i64.load offset=24
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    drop
    i32.const 5580
    i32.load
    i32.const 32
    i32.ne
    br_if $folding-inner0
    i32.const 5572
    i32.load
    local.tee $0
    i64.load
    local.get $0
    i64.load offset=8
    local.get $0
    i64.load offset=16
    local.get $0
    i64.load offset=24
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    drop
    i32.const 5692
    i32.load
    i32.const 32
    i32.ne
    br_if $folding-inner0
    i32.const 5684
    i32.load
    local.tee $0
    i64.load
    local.get $0
    i64.load offset=8
    local.get $0
    i64.load offset=16
    local.get $0
    i64.load offset=24
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    drop
    br $__inlined_func$start:~lib/@btc-vision/btc-runtime/runtime/secp256k1/ECPoint$37
   end
   i32.const 2304
   i32.const 5728
   i32.const 169
   i32.const 30
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/stringPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/totalSupplyPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/maxSupplyPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/ownerOfMapPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenApprovalMapPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/operatorApprovalMapPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/balanceOfMapPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenURIMapPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/nextTokenIdPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/ownerTokensMapPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenIndexMapPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/initializedPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenURICounterPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/approveNonceMapPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  drop
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.load offset=8
  i32.const 30
  i32.lt_s
  if
   i32.const 0
   i32.const 30
   call $~lib/typedarray/Uint8Array#constructor
   local.set $4
   loop $for-loop|0
    local.get $5
    local.get $1
    i32.load offset=8
    i32.lt_s
    if
     local.get $4
     local.get $5
     local.get $1
     local.get $5
     call $~lib/typedarray/Uint8Array#__get
     call $~lib/typedarray/Uint8Array#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   local.get $4
   local.set $1
  end
  local.get $2
  if
   local.get $1
   i32.load offset=8
   i32.const 30
   i32.ne
   if
    i32.const 6768
    i32.const 1
    local.get $1
    i32.load offset=8
    call $~lib/util/number/itoa32
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 6768
    i32.const 3
    local.get $3
    call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    i32.const 6768
    call $~lib/staticarray/StaticArray<~lib/string/String>#join
    i32.const 6816
    i32.const 101
    i32.const 9
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
  end
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  i32.const 0
  local.get $0
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $2
  i32.const 1
  local.get $0
  i32.const 65535
  i32.and
  i32.const 8
  i32.shr_u
  call $~lib/typedarray/Uint8Array#__set
  loop $for-loop|1
   local.get $6
   i32.const 30
   i32.lt_s
   if
    local.get $2
    local.get $6
    i32.const 2
    i32.add
    local.get $1
    local.get $6
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/typedarray/Uint8Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  local.get $2
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 16
  i32.const 38
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i32.store16 offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  i32.store offset=12
  local.get $2
  local.get $0
  local.get $1
  i32.const 1
  i32.const 6528
  call $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer
  i32.store
  local.get $2
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/ReentrancyGuard#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 36
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 20
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 23
  i32.const 6496
  call $~lib/rt/__newArray
  i32.store
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/statusPointer
  local.set $2
  i32.const 12
  i32.const 37
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $2
  i32.store16 offset=4
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=8
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.const 0
  local.get $2
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $3
  i32.const 1
  local.get $2
  i32.const 65535
  i32.and
  i32.const 8
  i32.shr_u
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  local.get $3
  i32.store
  local.get $1
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/depthPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#constructor
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<u64>#__set (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 2176
    i32.const 4032
    i32.const 130
    i32.const 22
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 3
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/array/Array<u64>#__get (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2176
   i32.const 4032
   i32.const 114
   i32.const 42
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#clone (param $0 i32) (result i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load offset=24
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.shl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  local.get $1
  i32.const 0
  i32.le_s
  if
   local.get $1
   if (result i32)
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   else
    local.get $0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#clone
   end
   return
  end
  local.get $1
  i32.const 256
  i32.ge_s
  if
   i64.const 0
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   return
  end
  local.get $1
  i32.const 255
  i32.and
  local.tee $7
  i32.const 6
  i32.shr_u
  local.set $1
  i32.const 64
  local.get $7
  i32.const 63
  i32.and
  local.tee $7
  i32.sub
  local.set $9
  local.get $0
  i64.load
  local.set $8
  local.get $0
  i64.load offset=8
  local.set $10
  local.get $0
  i64.load offset=16
  local.set $2
  local.get $0
  i64.load offset=24
  local.set $5
  local.get $1
  if (result i64)
   local.get $1
   i32.const 1
   i32.eq
   if (result i64)
    local.get $8
    local.get $7
    i64.extend_i32_s
    i64.shl
    local.set $4
    local.get $10
    local.get $7
    i64.extend_i32_s
    i64.shl
    local.get $8
    local.get $9
    i64.extend_i32_s
    i64.shr_u
    i64.const 0
    local.get $7
    select
    i64.or
    local.set $3
    local.get $2
    local.get $7
    i64.extend_i32_s
    i64.shl
    local.get $10
    local.get $9
    i64.extend_i32_s
    i64.shr_u
    i64.const 0
    local.get $7
    select
    i64.or
   else
    local.get $1
    i32.const 2
    i32.eq
    if (result i64)
     local.get $8
     local.get $7
     i64.extend_i32_s
     i64.shl
     local.set $3
     local.get $10
     local.get $7
     i64.extend_i32_s
     i64.shl
     local.get $8
     local.get $9
     i64.extend_i32_s
     i64.shr_u
     i64.const 0
     local.get $7
     select
     i64.or
    else
     local.get $8
     local.get $7
     i64.extend_i32_s
     i64.shl
     i64.const 0
     local.get $1
     i32.const 3
     i32.eq
     select
    end
   end
  else
   local.get $8
   local.get $7
   i64.extend_i32_s
   i64.shl
   local.set $6
   local.get $10
   local.get $7
   i64.extend_i32_s
   i64.shl
   local.get $8
   local.get $9
   i64.extend_i32_s
   i64.shr_u
   i64.const 0
   local.get $7
   select
   i64.or
   local.set $4
   local.get $2
   local.get $7
   i64.extend_i32_s
   i64.shl
   local.get $10
   local.get $9
   i64.extend_i32_s
   i64.shr_u
   i64.const 0
   local.get $7
   select
   i64.or
   local.set $3
   local.get $5
   local.get $7
   i64.extend_i32_s
   i64.shl
   local.get $2
   local.get $9
   i64.extend_i32_s
   i64.shr_u
   i64.const 0
   local.get $7
   select
   i64.or
  end
  local.set $2
  local.get $6
  local.get $4
  local.get $3
  local.get $2
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $0
  i64.load
  local.tee $3
  local.get $1
  i64.load
  i64.add
  local.set $2
  local.get $2
  local.get $3
  i64.lt_u
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  local.get $0
  i64.load offset=8
  local.tee $3
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  i64.add
  local.tee $4
  local.get $1
  i64.load offset=8
  i64.add
  local.set $5
  local.get $3
  local.get $4
  i64.gt_u
  local.get $4
  local.get $5
  i64.gt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  local.get $0
  i64.load offset=16
  local.tee $3
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  i64.add
  local.tee $4
  local.get $1
  i64.load offset=16
  i64.add
  local.set $6
  local.get $3
  local.get $4
  i64.gt_u
  local.get $4
  local.get $6
  i64.gt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  local.get $0
  i64.load offset=24
  local.tee $4
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  i64.add
  local.tee $3
  local.get $1
  i64.load offset=24
  i64.add
  local.set $7
  local.get $3
  local.get $4
  i64.lt_u
  local.get $3
  local.get $7
  i64.gt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carry
  local.get $2
  local.get $5
  local.get $6
  local.get $7
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $~lib/@btc-vision/as-bignum/assembly/globals/__mul256 (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (param $7 i64) (result i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $8
  i32.const 4
  i32.const 3
  i32.const 56
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $10
  i32.const 0
  local.get $0
  call $~lib/array/Array<u64>#__set
  local.get $10
  i32.const 1
  local.get $1
  call $~lib/array/Array<u64>#__set
  local.get $10
  i32.const 2
  local.get $2
  call $~lib/array/Array<u64>#__set
  local.get $10
  i32.const 3
  local.get $3
  call $~lib/array/Array<u64>#__set
  i32.const 4
  i32.const 3
  i32.const 56
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $11
  i32.const 0
  local.get $4
  call $~lib/array/Array<u64>#__set
  local.get $11
  i32.const 1
  local.get $5
  call $~lib/array/Array<u64>#__set
  local.get $11
  i32.const 2
  local.get $6
  call $~lib/array/Array<u64>#__set
  local.get $11
  i32.const 3
  local.get $7
  call $~lib/array/Array<u64>#__set
  loop $for-loop|0
   local.get $12
   i32.const 4
   i32.lt_s
   if
    i32.const 0
    local.set $9
    loop $for-loop|1
     local.get $9
     i32.const 4
     i32.lt_s
     if
      local.get $9
      local.get $12
      i32.add
      i32.const 6
      i32.shl
      local.tee $13
      i32.const 256
      i32.lt_s
      if
       local.get $10
       local.get $12
       call $~lib/array/Array<u64>#__get
       local.tee $0
       i64.const 32
       i64.shr_u
       local.set $1
       local.get $11
       local.get $9
       call $~lib/array/Array<u64>#__get
       local.tee $2
       i64.const 4294967295
       i64.and
       local.tee $3
       local.get $0
       i64.const 4294967295
       i64.and
       local.tee $0
       i64.mul
       local.set $4
       local.get $2
       i64.const 32
       i64.shr_u
       local.tee $2
       local.get $0
       i64.mul
       local.get $1
       local.get $3
       i64.mul
       local.get $4
       i64.const 32
       i64.shr_u
       i64.add
       local.tee $0
       i64.const 4294967295
       i64.and
       i64.add
       local.set $3
       local.get $1
       local.get $2
       i64.mul
       local.get $0
       i64.const 32
       i64.shr_u
       i64.add
       local.get $3
       i64.const 32
       i64.shr_u
       i64.add
       global.set $~lib/@btc-vision/as-bignum/assembly/globals/__res128_hi
       local.get $4
       i64.const 4294967295
       i64.and
       local.get $3
       i64.const 32
       i64.shl
       i64.or
       global.get $~lib/@btc-vision/as-bignum/assembly/globals/__res128_hi
       call $~lib/@btc-vision/as-bignum/assembly/integer/u128/u128#constructor
       local.tee $14
       i64.load
       local.get $14
       i64.load offset=8
       i64.const 0
       i64.const 0
       call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
       local.set $14
       local.get $8
       local.get $13
       if (result i32)
        local.get $14
        local.get $13
        call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.shl
       else
        local.get $14
       end
       call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.add
       local.set $8
      end
      local.get $9
      i32.const 1
      i32.add
      local.set $9
      br $for-loop|1
     end
    end
    local.get $12
    i32.const 1
    i32.add
    local.set $12
    br $for-loop|0
   end
  end
  local.get $8
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load offset=24
  i64.ne
  if
   local.get $0
   i64.load offset=24
   local.get $1
   i64.load offset=24
   i64.lt_u
   return
  end
  local.get $0
  i64.load offset=16
  local.get $1
  i64.load offset=16
  i64.ne
  if
   local.get $0
   i64.load offset=16
   local.get $1
   i64.load offset=16
   i64.lt_u
   return
  end
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.ne
  if
   local.get $0
   i64.load offset=8
   local.get $1
   i64.load offset=8
   i64.lt_u
   return
  end
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.lt_u
 )
 (func $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.div (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  local.get $1
  i64.load offset=24
  local.get $1
  i64.load offset=16
  local.get $1
  i64.load
  local.get $1
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if
   i32.const 6944
   i32.const 5728
   i32.const 353
   i32.const 21
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if (result i32)
   i32.const 1
  else
   local.get $0
   local.get $1
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
  end
  if
   i64.const 0
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   return
  end
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.eq
  if (result i32)
   local.get $0
   i64.load offset=8
   local.get $1
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=16
   local.get $1
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=24
   local.get $1
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  if
   i64.const 1
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   return
  end
  local.get $0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#clone
  local.set $5
  local.get $1
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#clone
  local.set $1
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#clone
  local.set $0
  local.get $1
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.0 (result i32)
   local.get $1
   i64.load offset=24
   i64.const 0
   i64.ne
   if
    local.get $1
    i64.load offset=24
    i64.clz
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.0
   end
   local.get $1
   i64.load offset=16
   i64.const 0
   i64.ne
   if
    local.get $1
    i64.load offset=16
    i64.clz
    i64.const -64
    i64.sub
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.0
   end
   local.get $1
   i64.load offset=8
   i64.const 0
   i64.ne
   if
    local.get $1
    i64.load offset=8
    i64.clz
    i64.const 128
    i64.add
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.0
   end
   local.get $1
   i64.load
   i64.const 0
   i64.ne
   if
    local.get $1
    i64.load
    i64.clz
    i64.const 192
    i64.add
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.0
   end
   i32.const 256
  end
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.1 (result i32)
   local.get $5
   i64.load offset=24
   i64.const 0
   i64.ne
   if
    local.get $5
    i64.load offset=24
    i64.clz
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.1
   end
   local.get $5
   i64.load offset=16
   i64.const 0
   i64.ne
   if
    local.get $5
    i64.load offset=16
    i64.clz
    i64.const -64
    i64.sub
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.1
   end
   local.get $5
   i64.load offset=8
   i64.const 0
   i64.ne
   if
    local.get $5
    i64.load offset=8
    i64.clz
    i64.const 128
    i64.add
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.1
   end
   local.get $5
   i64.load
   i64.const 0
   i64.ne
   if
    local.get $5
    i64.load
    i64.clz
    i64.const 192
    i64.add
    i32.wrap_i64
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.clz|inlined.1
   end
   i32.const 256
  end
  i32.sub
  local.tee $1
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.shl
  local.set $4
  loop $for-loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    local.get $5
    local.get $4
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
    i32.eqz
    if
     local.get $5
     i64.load
     local.tee $2
     local.get $4
     i64.load
     i64.sub
     local.set $6
     local.get $2
     local.get $6
     i64.lt_u
     i64.extend_i32_s
     global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     local.get $5
     i64.load offset=8
     local.tee $2
     local.get $4
     i64.load offset=8
     i64.sub
     local.tee $7
     global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     i64.sub
     local.set $8
     local.get $7
     local.get $8
     i64.lt_u
     local.get $2
     local.get $7
     i64.lt_u
     i32.add
     i64.extend_i32_s
     global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     local.get $5
     i64.load offset=16
     local.tee $2
     local.get $4
     i64.load offset=16
     i64.sub
     local.tee $7
     global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     i64.sub
     local.set $9
     local.get $7
     local.get $9
     i64.lt_u
     local.get $2
     local.get $7
     i64.lt_u
     i32.add
     i64.extend_i32_s
     global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     local.get $5
     i64.load offset=24
     local.tee $7
     local.get $4
     i64.load offset=24
     i64.sub
     local.tee $2
     global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     i64.sub
     local.set $10
     local.get $2
     local.get $10
     i64.lt_u
     local.get $2
     local.get $7
     i64.gt_u
     i32.add
     i64.extend_i32_s
     global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
     local.get $5
     local.get $6
     i64.store
     local.get $5
     local.get $8
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $10
     i64.store offset=24
     i64.const 1
     local.get $1
     i32.const 64
     i32.rem_s
     i64.extend_i32_s
     i64.shl
     local.set $2
     local.get $1
     i32.const 64
     i32.div_s
     local.tee $3
     if
      local.get $3
      i32.const 1
      i32.eq
      if
       local.get $0
       local.get $0
       i64.load offset=8
       local.get $2
       i64.or
       i64.store offset=8
      else
       local.get $3
       i32.const 2
       i32.eq
       if
        local.get $0
        local.get $0
        i64.load offset=16
        local.get $2
        i64.or
        i64.store offset=16
       else
        local.get $3
        i32.const 3
        i32.eq
        if
         local.get $0
         local.get $0
         i64.load offset=24
         local.get $2
         i64.or
         i64.store offset=24
        end
       end
      end
     else
      local.get $0
      local.get $0
      i64.load
      local.get $2
      i64.or
      i64.store
     end
    end
    local.get $4
    local.get $4
    i64.load offset=8
    i64.const 63
    i64.shl
    local.get $4
    i64.load
    i64.const 1
    i64.shr_u
    i64.or
    i64.store
    local.get $4
    local.get $4
    i64.load offset=16
    i64.const 63
    i64.shl
    local.get $4
    i64.load offset=8
    i64.const 1
    i64.shr_u
    i64.or
    i64.store offset=8
    local.get $4
    local.get $4
    i64.load offset=24
    i64.const 63
    i64.shl
    local.get $4
    i64.load offset=16
    i64.const 1
    i64.shr_u
    i64.or
    i64.store offset=16
    local.get $4
    local.get $4
    i64.load offset=24
    i64.const 1
    i64.shr_u
    i64.store offset=24
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.mul (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if (result i64)
   i64.const 0
  else
   local.get $1
   i64.load offset=24
   local.get $1
   i64.load offset=16
   local.get $1
   i64.load
   local.get $1
   i64.load offset=8
   i64.or
   i64.or
   i64.or
  end
  i64.eqz
  if
   i64.const 0
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   return
  end
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load offset=24
  local.get $1
  i64.load
  local.get $1
  i64.load offset=8
  local.get $1
  i64.load offset=16
  local.get $1
  i64.load offset=24
  call $~lib/@btc-vision/as-bignum/assembly/globals/__mul256
  local.tee $2
  local.get $0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.div
  local.tee $0
  i64.load
  local.get $1
  i64.load
  i64.eq
  if (result i32)
   local.get $0
   i64.load offset=8
   local.get $1
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=16
   local.get $1
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=24
   local.get $1
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 7008
   i32.const 7104
   i32.const 190
   i32.const 28
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
 )
 (func $~lib/polyfills/bswap<u64> (param $0 i64) (result i64)
  local.get $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $0
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $0
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString#constructor (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 40
  call $~lib/rt/stub/__new
  local.set $2
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.0 (result i32)
   local.get $1
   i64.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.0
   end
   local.get $1
   i64.const 1
   i64.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.0
   end
   local.get $1
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString.MAX_LENGTH_U256
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.mul
  local.set $4
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.load offset=4
  local.tee $5
  local.get $4
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  i64.store
  local.get $5
  local.get $4
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  local.get $5
  local.get $4
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  i64.store offset=16
  local.get $5
  local.get $4
  i64.load
  call $~lib/polyfills/bswap<u64>
  i64.store offset=24
  local.get $3
  i32.const 2
  i32.const 32
  call $~lib/typedarray/Uint8Array#slice
  local.set $3
  local.get $2
  i32.eqz
  if
   i32.const 16
   i32.const 41
   call $~lib/rt/stub/__new
   local.set $2
  end
  local.get $2
  local.get $0
  i32.store16 offset=8
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 2032
  i32.store offset=12
  local.get $2
  local.get $3
  i32.store offset=4
  local.get $2
  i32.const 65535
  i32.store
  local.get $2
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   i32.const 30
   call $~lib/typedarray/Uint8Array#constructor
   local.set $2
  end
  i32.const 8
  i32.const 42
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store16
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store16
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 2
  i32.const 43
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store16
  local.get $1
  local.get $0
  i32.store16
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 100
   i32.const 35
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  i32.const 0
  i32.store offset=36
  local.get $0
  i32.const 0
  i32.store offset=40
  local.get $0
  i32.const 0
  i32.store offset=44
  local.get $0
  i32.const 0
  i32.store offset=48
  local.get $0
  i32.const 0
  i32.store offset=52
  local.get $0
  i32.const 0
  i32.store offset=56
  local.get $0
  i32.const 0
  i32.store offset=60
  local.get $0
  i32.const 0
  i32.store offset=64
  local.get $0
  i32.const 0
  i32.store offset=68
  local.get $0
  i32.const 0
  i32.store offset=72
  local.get $0
  i32.const 0
  i32.store offset=76
  local.get $0
  i32.const 0
  i32.store offset=80
  local.get $0
  i32.const 0
  i32.store offset=84
  i32.const 24
  i32.const 50
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $1
  i32.const 3
  i32.store offset=4
  local.get $1
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $0
  local.get $1
  i32.store offset=88
  i32.const 24
  i32.const 55
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $1
  i32.const 3
  i32.store offset=4
  local.get $1
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $0
  local.get $1
  i32.store offset=92
  local.get $0
  i32.const 0
  i32.store offset=96
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/ReentrancyGuard#constructor
  local.tee $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/stringPointer
  i64.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString#constructor
  i32.store offset=16
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/stringPointer
  i64.const 2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString#constructor
  i32.store offset=20
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/stringPointer
  i64.const 3
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString#constructor
  i32.store offset=24
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/stringPointer
  i64.const 4
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString#constructor
  i32.store offset=28
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/stringPointer
  i64.const 5
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString#constructor
  i32.store offset=32
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/stringPointer
  i64.const 6
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString#constructor
  i32.store offset=36
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/stringPointer
  i64.const 7
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString#constructor
  i32.store offset=40
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/totalSupplyPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#constructor
  i32.store offset=44
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/maxSupplyPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#constructor
  i32.store offset=48
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/nextTokenIdPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#constructor
  i32.store offset=52
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/initializedPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#constructor
  i32.store offset=56
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenURICounterPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_POINTER
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#constructor
  i32.store offset=60
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/ownerOfMapPointer
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#constructor@varargs
  i32.store offset=64
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenApprovalMapPointer
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#constructor@varargs
  i32.store offset=68
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/balanceOfMapPointer
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#constructor
  i32.store offset=72
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/operatorApprovalMapPointer
  local.set $2
  i32.const 14
  i32.const 44
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store16 offset=12
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 46
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 48
  i32.const 7232
  call $~lib/rt/__newArray
  i32.store
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 49
  i32.const 7264
  call $~lib/rt/__newArray
  i32.store offset=4
  local.get $0
  i32.const -1
  i32.store offset=8
  local.get $0
  local.get $2
  i32.store16 offset=12
  local.get $1
  local.get $0
  i32.store offset=76
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/approveNonceMapPointer
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#constructor
  i32.store offset=80
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenURIMapPointer
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#constructor@varargs
  i32.store offset=84
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenIndexMapPointer
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#constructor@varargs
  i32.store offset=96
  local.get $1
 )
 (func $start:src/index~anonymous|0 (result i32)
  (local $0 i32)
  i32.const 116
  i32.const 34
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store offset=100
  local.get $0
  i32.const 0
  i32.store offset=104
  local.get $0
  i32.const 0
  i32.store offset=108
  local.get $0
  i32.const 0
  i32.store offset=112
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#constructor
  local.tee $0
  global.get $src/contract/OrdinalsVault/burnAddressPointer
  i64.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString#constructor
  i32.store offset=100
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  global.get $src/contract/OrdinalsVault/verifiedBurnsPointer
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#constructor@varargs
  i32.store offset=104
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  global.get $src/contract/OrdinalsVault/burnBlockHeightsPointer
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#constructor@varargs
  i32.store offset=108
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  global.get $src/contract/OrdinalsVault/mintedInscriptionsPointer
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#constructor@varargs
  i32.store offset=112
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#createContractIfNotExists (param $0 i32)
  local.get $0
  i32.load offset=28
  i32.eqz
  if
   i32.const 7328
   i32.const 5232
   i32.const 1134
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=12
  i32.eqz
  if
   i32.const 0
   global.set $~argumentsLength
   local.get $0
   local.get $0
   i32.load offset=28
   i32.load
   call_indirect $0 (type $8)
   i32.store offset=12
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 8
  i32.const 58
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.load
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  local.get $0
  call $~lib/dataview/DataView#constructor@varargs
  i32.store
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd (param $0 i32) (param $1 i32)
  local.get $1
  local.get $0
  i32.load
  i32.load offset=8
  i32.gt_s
  if
   i32.const 7568
   i32.const 1
   local.get $1
   call $~lib/util/number/itoa32
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 7568
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 7712
   i32.const 1
   local.get $0
   i32.load
   i32.load offset=8
   call $~lib/util/number/itoa32
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 7712
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   call $~lib/string/String#concat
   i32.const 7744
   i32.const 442
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load
  local.tee $2
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2176
   i32.const 2416
   i32.const 72
   i32.const 50
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  local.get $2
  i32.load offset=4
  i32.add
  i32.load8_u
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.gt_u
   if
    block $for-break0
     local.get $0
     call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
     local.tee $5
     i32.const 1
     local.get $2
     select
     i32.eqz
     if
      local.get $3
      local.tee $0
      i32.load offset=8
      local.tee $1
      i32.const 0
      local.get $1
      i32.const 0
      i32.le_s
      select
      local.set $2
      i32.const 12
      i32.const 7
      call $~lib/rt/stub/__new
      local.tee $3
      local.get $0
      i32.load
      i32.store
      local.get $3
      local.get $0
      i32.load offset=4
      local.get $2
      i32.add
      i32.store offset=4
      local.get $3
      local.get $4
      i32.const 0
      i32.lt_s
      if (result i32)
       local.get $1
       local.get $4
       i32.add
       local.tee $0
       i32.const 0
       local.get $0
       i32.const 0
       i32.gt_s
       select
      else
       local.get $4
       local.get $1
       local.get $1
       local.get $4
       i32.gt_s
       select
      end
      local.tee $0
      local.get $2
      local.get $0
      local.get $2
      i32.gt_s
      select
      local.get $2
      i32.sub
      i32.store offset=8
      br $for-break0
     end
     local.get $3
     local.get $4
     local.get $5
     call $~lib/typedarray/Uint8Array#__set
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
  end
  local.get $3
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64 (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 31
  i32.shr_u
  local.get $0
  i32.load
  local.tee $2
  i32.load offset=8
  local.get $1
  i32.const 8
  i32.add
  i32.lt_s
  i32.or
  if
   i32.const 2176
   i32.const 2416
   i32.const 159
   i32.const 7
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  local.get $2
  i32.load offset=4
  i32.add
  i64.load
  call $~lib/polyfills/bswap<u64>
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  i32.store offset=4
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#___set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load8_u offset=12
  if
   i32.const 7920
   i32.const 2752
   i32.const 378
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2176
   i32.const 2752
   i32.const 382
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 32
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 10
  i32.const 7888
  call $~lib/rt/__newArray
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   i32.const 32
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#___set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:chainId (param $0 i32) (result i32)
  local.get $0
  i32.load offset=44
  i32.eqz
  if
   i32.const 8000
   i32.const 5232
   i32.const 249
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=44
  local.tee $0
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 251
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   return
  end
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=8
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.ne
    if
     i32.const 0
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#setEnvironmentVariables (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor
  local.tee $12
  i32.const 32
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $1
  local.get $12
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
  local.set $3
  local.get $12
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
  local.set $4
  local.get $12
  i32.const 32
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $14
  local.get $12
  i32.const 32
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $5
  local.get $12
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
  local.set $6
  local.get $12
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
  local.set $7
  local.get $12
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
  local.set $8
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.set $13
  loop $for-loop|0
   local.get $2
   i32.const 32
   i32.lt_s
   if
    local.get $13
    local.get $2
    local.get $12
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $12
  i32.const 32
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $9
  local.get $12
  i32.const 32
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $10
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.set $15
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   i32.const 32
   i32.lt_s
   if
    local.get $15
    local.get $2
    local.get $12
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $12
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
  local.set $11
  local.get $15
  local.get $13
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
  local.set $2
  i32.const 32
  i32.const 26
  call $~lib/rt/stub/__new
  local.tee $12
  local.get $14
  i32.store offset=16
  local.get $12
  local.get $5
  i32.store offset=20
  local.get $12
  i32.const 0
  i32.store
  local.get $12
  i32.const 0
  i32.store offset=4
  local.get $12
  i32.const 0
  i32.store offset=8
  local.get $12
  i32.const 0
  i32.const 28
  call $~lib/rt/stub/__new
  local.tee $5
  if (result i32)
   local.get $5
  else
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
  end
  i32.store offset=12
  local.get $12
  i32.const 0
  i32.store offset=24
  local.get $12
  i32.const 0
  i32.store offset=28
  local.get $12
  local.get $8
  i32.store offset=4
  local.get $12
  local.get $2
  i32.store offset=8
  i32.const 8
  i32.const 27
  call $~lib/rt/stub/__new
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $11
  i64.store
  local.get $12
  local.get $2
  i32.store
  local.get $0
  local.get $12
  i32.store offset=24
  local.get $0
  local.get $7
  i32.store offset=36
  local.get $0
  local.get $6
  i32.store offset=40
  local.get $0
  local.get $9
  i32.store offset=44
  local.get $0
  local.get $10
  i32.store offset=48
  global.get $~lib/@btc-vision/btc-runtime/runtime/script/Networks/Network
  local.set $5
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:chainId
  local.tee $6
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 8192
   i32.const 8272
   i32.const 75
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 0
  local.set $2
  block $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#fromChainId$1647
   local.get $6
   local.get $5
   i32.load
   call $~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#equals
   br_if $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#fromChainId$1647
   i32.const 1
   local.set $2
   local.get $6
   local.get $5
   i32.load offset=4
   call $~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#equals
   br_if $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#fromChainId$1647
   i32.const 2
   local.set $2
   local.get $6
   local.get $5
   i32.load offset=8
   call $~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#equals
   br_if $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/script/Networks/NetworkManager#fromChainId$1647
   i32.const 8416
   i32.const 8272
   i32.const 82
   i32.const 9
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  local.get $2
  i32.store offset=16
  i32.const 24
  i32.const 24
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $3
  i64.store offset=8
  local.get $2
  local.get $4
  i64.store offset=16
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.1 (result i32)
   local.get $3
   i64.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.1
   end
   local.get $3
   i64.const 1
   i64.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.1
   end
   local.get $3
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  i32.store
  local.get $0
  local.get $2
  i32.store offset=20
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#createContractIfNotExists
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 31
  i32.shr_u
  local.get $0
  i32.load
  local.tee $2
  i32.load offset=8
  local.get $1
  i32.const 4
  i32.add
  i32.lt_s
  i32.or
  if
   i32.const 2176
   i32.const 2416
   i32.const 87
   i32.const 7
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  local.get $2
  i32.load offset=4
  i32.add
  i32.load
  call $~lib/polyfills/bswap<u32>
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  i32.store offset=4
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contract (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  local.tee $0
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 158
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2176
   i32.const 4032
   i32.const 114
   i32.const 42
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 8480
   i32.const 4032
   i32.const 118
   i32.const 40
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onExecutionStarted (param $0 i32)
  (local $1 i32)
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    i32.load
    local.get $1
    call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
    drop
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionStarted (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onExecutionStarted@override$402
   local.get $0
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contract
   local.tee $0
   i32.const 8
   i32.sub
   i32.load
   local.tee $2
   i32.const 36
   i32.eq
   local.get $2
   i32.const 35
   i32.eq
   i32.or
   local.get $2
   i32.const 34
   i32.eq
   i32.or
   if
    local.get $0
    call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onExecutionStarted
    local.get $0
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/ReentrancyGuard#isSelectorExcluded@override
    i32.eqz
    if
     local.get $0
     call $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/ReentrancyGuard#nonReentrantBefore
    end
    br $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onExecutionStarted@override$402
   end
   local.get $0
   call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onExecutionStarted
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256 (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/_sha256
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  call $~lib/typedarray/Uint8Array.wrap@varargs
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 12
  i32.const 59
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.store offset=8
  local.get $0
  i32.load
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  local.get $0
  call $~lib/dataview/DataView#constructor@varargs
  i32.store offset=4
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contractDeployer (param $0 i32) (result i32)
  local.get $0
  i32.load offset=36
  i32.eqz
  if
   i32.const 8896
   i32.const 5232
   i32.const 208
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=36
  local.tee $0
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 210
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.const -1
  local.get $0
  i32.load
  i32.sub
  i32.gt_u
  if
   i32.const 9280
   i32.const 9136
   i32.const 480
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.tee $2
  local.get $1
  local.get $0
  i32.load
  i32.add
  local.tee $1
  i32.lt_u
  if
   i32.const 9600
   i32.const 1
   local.get $1
   local.get $2
   i32.sub
   local.get $2
   i32.add
   call $~lib/util/number/itoa32
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 9360
   i32.const 9600
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   call $~lib/string/String#concat
   i32.const 9632
   local.get $0
   i32.load offset=4
   i32.load offset=8
   call $~lib/util/number/itoa32
   call $~lib/string/String#concat
   call $~lib/string/String#concat
   i32.const 9136
   i32.const 505
   i32.const 9
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8 (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  call $~lib/dataview/DataView#setUint8
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  loop $for-loop|0
   local.get $2
   local.get $1
   i32.load offset=8
   i32.lt_s
   if
    local.get $0
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress (param $0 i32) (param $1 i32)
  local.get $1
  i32.load offset=8
  i32.const 32
  i32.gt_s
  if
   local.get $1
   i32.load offset=8
   call $~lib/util/number/itoa32
   local.set $0
   i32.const 32
   call $~lib/util/number/itoa32
   local.set $1
   i32.const 9088
   i32.const 1
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 9088
   i32.const 3
   local.get $1
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 9088
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 9136
   i32.const 492
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#execute (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  global.set $~argumentsLength
  i32.const 8608
  call $~lib/string/String.UTF8.encode@varargs
  i32.const 1
  global.set $~argumentsLength
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256
  local.tee $4
  i32.load offset=8
  i32.const 4
  i32.lt_s
  if
   i32.const 8656
   i32.const 8768
   i32.const 12
   i32.const 9
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  local.get $4
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 24
  i32.shl
  local.get $4
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 16
  i32.shl
  i32.or
  local.get $4
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 8
  i32.shl
  i32.or
  local.get $4
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  i32.or
  i32.eq
  if
   i32.const 32
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
   local.tee $0
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contractDeployer
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
   local.get $0
   return
  end
  local.get $2
  i32.load offset=4
  local.set $4
  loop $for-loop|1
   local.get $3
   local.get $0
   i32.load
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    i32.load
    local.get $3
    call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
    i32.const 8
    i32.sub
    i32.load
    drop
    local.get $2
    local.get $4
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
    local.get $2
    local.get $4
    i32.store offset=4
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  i32.const 9680
  local.get $1
  call $~lib/util/number/utoa32
  call $~lib/string/String#concat
  i32.const 9744
  i32.const 92
  i32.const 9
  call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionCompleted (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onExecutionCompleted@override$444
   local.get $0
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contract
   local.tee $0
   i32.const 8
   i32.sub
   i32.load
   local.tee $2
   i32.const 36
   i32.eq
   local.get $2
   i32.const 35
   i32.eq
   i32.or
   local.get $2
   i32.const 34
   i32.eq
   i32.or
   if
    local.get $0
    call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onExecutionStarted
    local.get $0
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/ReentrancyGuard#isSelectorExcluded@override
    i32.eqz
    if
     local.get $0
     i32.load offset=12
     if
      local.get $0
      i32.load offset=12
      i32.const 1
      i32.eq
      if
       local.get $0
       i32.load offset=8
       call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
       local.tee $1
       i64.load offset=24
       local.get $1
       i64.load offset=16
       local.get $1
       i64.load
       local.get $1
       i64.load offset=8
       i64.or
       i64.or
       i64.or
       i64.eqz
       if
        i32.const 17728
        i32.const 10288
        i32.const 100
        i32.const 17
        call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
        unreachable
       end
       local.get $1
       i64.const 1
       i64.const 0
       i64.const 0
       i64.const 0
       call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
       call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.sub
       local.set $1
       local.get $0
       i32.load offset=8
       local.get $1
       call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
       local.get $1
       i64.load offset=24
       local.get $1
       i64.load offset=16
       local.get $1
       i64.load
       local.get $1
       i64.load offset=8
       i64.or
       i64.or
       i64.or
       i64.eqz
       if
        local.get $0
        i32.load offset=4
        i32.const 0
        call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value
       end
      end
     else
      local.get $0
      i32.load offset=4
      i32.const 0
      call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value
     end
    end
    br $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onExecutionCompleted@override$444
   end
   local.get $0
   call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onExecutionStarted
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/execute (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 512
  i32.const 512
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getEnvironmentVariables
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $1
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#setEnvironmentVariables
  i32.const 0
  local.get $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getCalldata
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor
  local.tee $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32
  local.set $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionStarted
  block $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#execute@override$447
   block $default
    block $case1
     global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
     call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contract
     local.tee $0
     i32.const 8
     i32.sub
     i32.load
     local.tee $3
     i32.const 34
     i32.ne
     if
      local.get $3
      i32.const 35
      i32.eq
      br_if $case1
      br $default
     end
     block $__inlined_func$src/contract/OrdinalsVault/OrdinalsVault#execute$1529
      local.get $1
      i32.const -369092316
      i32.eq
      if
       local.get $0
       local.get $2
       call $src/contract/OrdinalsVault/OrdinalsVault#recordBurn
       local.set $0
       br $__inlined_func$src/contract/OrdinalsVault/OrdinalsVault#execute$1529
      end
      local.get $1
      i32.const 145141108
      i32.eq
      if
       local.get $0
       local.get $2
       call $src/contract/OrdinalsVault/OrdinalsVault#mint
       local.set $0
       br $__inlined_func$src/contract/OrdinalsVault/OrdinalsVault#execute$1529
      end
      local.get $1
      i32.const 239680438
      i32.eq
      if
       local.get $0
       local.get $2
       call $src/contract/OrdinalsVault/OrdinalsVault#getBurnStatus
       local.set $0
       br $__inlined_func$src/contract/OrdinalsVault/OrdinalsVault#execute$1529
      end
      local.get $1
      i32.const 251251707
      i32.eq
      if
       local.get $0
       i32.load offset=100
       call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
       i32.const 1
       global.set $~argumentsLength
       call $~lib/string/String.UTF8.encode@varargs
       i32.const 1
       global.set $~argumentsLength
       call $~lib/typedarray/Uint8Array.wrap@varargs
       local.tee $2
       i32.load offset=8
       i32.const 4
       i32.add
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
       local.tee $0
       local.get $2
       i32.load offset=8
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU32
       local.get $0
       local.get $2
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
       br $__inlined_func$src/contract/OrdinalsVault/OrdinalsVault#execute$1529
      end
      local.get $0
      local.get $1
      local.get $2
      call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#execute
      local.set $0
     end
     br $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#execute@override$447
    end
    local.get $0
    local.get $1
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#execute
    local.set $0
    br $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#execute@override$447
   end
   local.get $0
   local.get $1
   local.get $2
   call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#execute
   local.set $0
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionCompleted
  local.get $0
  i32.load offset=8
  i32.load
  local.tee $0
  i32.const 20
  i32.sub
  i32.load offset=16
  local.tee $1
  i32.const 0
  i32.gt_s
  if
   i32.const 0
   local.get $0
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/env/global/env_exit
  end
  i32.const 0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/onDeploy (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 512
  i32.const 512
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getEnvironmentVariables
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $1
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#setEnvironmentVariables
  i32.const 0
  local.get $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getCalldata
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor
  local.set $2
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionStarted
  block $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onDeployment@override$452
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contract
   local.tee $1
   i32.const 8
   i32.sub
   i32.load
   i32.const 34
   i32.eq
   if
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength
    local.set $3
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength
    local.set $4
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
    local.set $0
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength
    local.set $5
    i32.const 32
    i32.const 68
    call $~lib/rt/stub/__new
    local.tee $2
    i32.const 0
    i32.store
    local.get $2
    i32.const 0
    i32.store offset=4
    local.get $2
    i32.const 0
    i32.store offset=8
    local.get $2
    i32.const 0
    i32.store offset=12
    local.get $2
    i32.const 0
    i32.store offset=16
    local.get $2
    i32.const 0
    i32.store offset=20
    local.get $2
    i32.const 0
    i32.store offset=24
    local.get $2
    i32.const 0
    i32.store offset=28
    local.get $2
    local.get $3
    i32.store
    local.get $2
    local.get $4
    i32.store offset=4
    local.get $2
    i32.const 2032
    i32.store offset=8
    local.get $2
    local.get $0
    i32.store offset=12
    local.get $2
    i32.const 2032
    i32.store offset=16
    local.get $2
    i32.const 2032
    i32.store offset=20
    local.get $2
    i32.const 2032
    i32.store offset=24
    local.get $2
    i32.const 2032
    i32.store offset=28
    local.get $1
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#instantiate
    local.get $1
    i32.load offset=100
    local.tee $0
    local.get $5
    i32.store offset=12
    local.get $0
    call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
    br $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onDeployment@override$452
   end
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onExecutionStarted
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionCompleted
  i32.const 0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/exports/index/onUpdate (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  i32.const 512
  i32.const 512
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getEnvironmentVariables
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $1
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#setEnvironmentVariables
  i32.const 0
  local.get $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getCalldata
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor
  drop
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionStarted
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contract
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onExecutionStarted
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#onExecutionCompleted
  i32.const 0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#isLastIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const -1
  i32.ne
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=8
   call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
   local.tee $2
   i32.load offset=8
   local.get $1
   i32.load offset=8
   i32.eq
   if
    local.get $1
    i32.load offset=8
    local.set $0
    local.get $1
    i32.load offset=4
    local.set $3
    i32.const 0
    local.set $1
    block $~lib/util/memory/memcmp|inlined.0
     local.get $3
     local.get $2
     i32.load offset=4
     local.tee $2
     i32.eq
     br_if $~lib/util/memory/memcmp|inlined.0
     local.get $2
     i32.const 7
     i32.and
     local.get $3
     i32.const 7
     i32.and
     i32.eq
     if
      loop $while-continue|0
       local.get $2
       i32.const 7
       i32.and
       if
        i32.const 0
        local.set $1
        local.get $0
        i32.eqz
        br_if $~lib/util/memory/memcmp|inlined.0
        local.get $2
        i32.load8_u
        local.tee $4
        local.get $3
        i32.load8_u
        local.tee $5
        i32.sub
        local.set $1
        local.get $4
        local.get $5
        i32.ne
        br_if $~lib/util/memory/memcmp|inlined.0
        local.get $0
        i32.const 1
        i32.sub
        local.set $0
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        local.get $3
        i32.const 1
        i32.add
        local.set $3
        br $while-continue|0
       end
      end
      loop $while-continue|1
       local.get $0
       i32.const 8
       i32.ge_u
       if
        local.get $2
        i64.load
        local.get $3
        i64.load
        i64.eq
        if
         local.get $2
         i32.const 8
         i32.add
         local.set $2
         local.get $3
         i32.const 8
         i32.add
         local.set $3
         local.get $0
         i32.const 8
         i32.sub
         local.set $0
         br $while-continue|1
        end
       end
      end
     end
     loop $while-continue|2
      local.get $0
      local.tee $1
      i32.const 1
      i32.sub
      local.set $0
      local.get $1
      if
       local.get $2
       i32.load8_u
       local.tee $4
       local.get $3
       i32.load8_u
       local.tee $5
       i32.sub
       local.set $1
       local.get $4
       local.get $5
       i32.ne
       br_if $~lib/util/memory/memcmp|inlined.0
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $while-continue|2
      end
     end
     i32.const 0
     local.set $1
    end
    local.get $1
    i32.eqz
    if
     i32.const 1
     return
    end
   end
  end
  i32.const 0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#indexOf (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#isLastIndex
  if
   local.get $0
   i32.load offset=8
   return
  end
  local.get $0
  i32.load
  i32.load offset=12
  local.tee $2
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=8
  local.tee $3
  i32.const 8
  i32.ge_s
  if
   local.get $4
   i64.load
   local.set $10
   local.get $2
   i32.const 1
   i32.sub
   local.set $9
   loop $for-loop|0
    local.get $9
    i32.const 0
    i32.ge_s
    if
     block $for-continue|0
      local.get $0
      i32.load
      local.get $9
      call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
      local.tee $2
      i32.load offset=8
      local.get $3
      i32.ne
      br_if $for-continue|0
      local.get $2
      i32.load offset=4
      i64.load
      local.get $10
      i64.ne
      br_if $for-continue|0
      local.get $3
      local.set $1
      i32.const 0
      local.set $8
      block $~lib/util/memory/memcmp|inlined.1
       local.get $2
       i32.load offset=4
       local.tee $7
       local.get $4
       local.tee $2
       i32.eq
       br_if $~lib/util/memory/memcmp|inlined.1
       local.get $7
       i32.const 7
       i32.and
       local.get $2
       i32.const 7
       i32.and
       i32.eq
       if
        loop $while-continue|1
         local.get $7
         i32.const 7
         i32.and
         if
          i32.const 0
          local.set $8
          local.get $1
          i32.eqz
          br_if $~lib/util/memory/memcmp|inlined.1
          local.get $7
          i32.load8_u
          local.tee $6
          local.get $2
          i32.load8_u
          local.tee $5
          i32.sub
          local.set $8
          local.get $5
          local.get $6
          i32.ne
          br_if $~lib/util/memory/memcmp|inlined.1
          local.get $1
          i32.const 1
          i32.sub
          local.set $1
          local.get $7
          i32.const 1
          i32.add
          local.set $7
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $while-continue|1
         end
        end
        loop $while-continue|2
         local.get $1
         i32.const 8
         i32.ge_u
         if
          local.get $7
          i64.load
          local.get $2
          i64.load
          i64.eq
          if
           local.get $7
           i32.const 8
           i32.add
           local.set $7
           local.get $2
           i32.const 8
           i32.add
           local.set $2
           local.get $1
           i32.const 8
           i32.sub
           local.set $1
           br $while-continue|2
          end
         end
        end
       end
       loop $while-continue|3
        local.get $1
        local.tee $5
        i32.const 1
        i32.sub
        local.set $1
        local.get $5
        if
         local.get $7
         i32.load8_u
         local.tee $6
         local.get $2
         i32.load8_u
         local.tee $5
         i32.sub
         local.set $8
         local.get $5
         local.get $6
         i32.ne
         br_if $~lib/util/memory/memcmp|inlined.1
         local.get $7
         i32.const 1
         i32.add
         local.set $7
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $while-continue|3
        end
       end
       i32.const 0
       local.set $8
      end
      local.get $8
      i32.eqz
      if
       local.get $0
       local.get $9
       i32.store offset=8
       local.get $9
       return
      end
     end
     local.get $9
     i32.const 1
     i32.sub
     local.set $9
     br $for-loop|0
    end
   end
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $9
   loop $for-loop|4
    local.get $9
    i32.const 0
    i32.ge_s
    if
     local.get $3
     local.get $0
     i32.load
     local.get $9
     call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
     local.tee $2
     i32.load offset=8
     i32.eq
     if
      local.get $3
      local.set $1
      i32.const 0
      local.set $8
      block $~lib/util/memory/memcmp|inlined.2
       local.get $2
       i32.load offset=4
       local.tee $7
       local.get $4
       local.tee $2
       i32.eq
       br_if $~lib/util/memory/memcmp|inlined.2
       local.get $7
       i32.const 7
       i32.and
       local.get $2
       i32.const 7
       i32.and
       i32.eq
       if
        loop $while-continue|5
         local.get $7
         i32.const 7
         i32.and
         if
          i32.const 0
          local.set $8
          local.get $1
          i32.eqz
          br_if $~lib/util/memory/memcmp|inlined.2
          local.get $7
          i32.load8_u
          local.tee $6
          local.get $2
          i32.load8_u
          local.tee $5
          i32.sub
          local.set $8
          local.get $5
          local.get $6
          i32.ne
          br_if $~lib/util/memory/memcmp|inlined.2
          local.get $1
          i32.const 1
          i32.sub
          local.set $1
          local.get $7
          i32.const 1
          i32.add
          local.set $7
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $while-continue|5
         end
        end
        loop $while-continue|6
         local.get $1
         i32.const 8
         i32.ge_u
         if
          local.get $7
          i64.load
          local.get $2
          i64.load
          i64.eq
          if
           local.get $7
           i32.const 8
           i32.add
           local.set $7
           local.get $2
           i32.const 8
           i32.add
           local.set $2
           local.get $1
           i32.const 8
           i32.sub
           local.set $1
           br $while-continue|6
          end
         end
        end
       end
       loop $while-continue|7
        local.get $1
        local.tee $5
        i32.const 1
        i32.sub
        local.set $1
        local.get $5
        if
         local.get $7
         i32.load8_u
         local.tee $6
         local.get $2
         i32.load8_u
         local.tee $5
         i32.sub
         local.set $8
         local.get $5
         local.get $6
         i32.ne
         br_if $~lib/util/memory/memcmp|inlined.2
         local.get $7
         i32.const 1
         i32.add
         local.set $7
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $while-continue|7
        end
       end
       i32.const 0
       local.set $8
      end
      local.get $8
      i32.eqz
      if
       local.get $0
       local.get $9
       i32.store offset=8
       local.get $9
       return
      end
     end
     local.get $9
     i32.const 1
     i32.sub
     local.set $9
     br $for-loop|4
    end
   end
  end
  i32.const -1
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 2176
    i32.const 4032
    i32.const 130
    i32.const 22
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#indexOf
  local.tee $3
  i32.const -1
  i32.eq
  if
   local.get $0
   i32.load
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
   local.get $0
   i32.load offset=4
   local.get $2
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
   local.get $0
   local.get $0
   i32.load
   i32.load offset=12
   i32.const 1
   i32.sub
   i32.store offset=8
  else
   local.get $0
   i32.load offset=4
   local.get $3
   local.get $2
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#hasPointerStorageHash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 32
  i32.ne
  if
   i32.const 9888
   i32.const 5232
   i32.const 1171
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#indexOf
  i32.const -1
  i32.ne
  if
   return
  end
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/loadPointer
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  call $~lib/typedarray/Uint8Array.wrap@varargs
  local.set $2
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#set
  local.get $2
  i32.load offset=8
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_BUFFER
  local.tee $1
  i32.load offset=8
  i32.eq
  if
   local.get $2
   i32.load offset=8
   local.set $0
   block $~lib/util/memory/memcmp|inlined.3
    local.get $2
    i32.load offset=4
    local.tee $2
    local.get $1
    i32.load offset=4
    local.tee $3
    i32.eq
    br_if $~lib/util/memory/memcmp|inlined.3
    local.get $2
    i32.const 7
    i32.and
    local.get $3
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $2
      i32.const 7
      i32.and
      if
       local.get $0
       i32.eqz
       br_if $~lib/util/memory/memcmp|inlined.3
       local.get $3
       i32.load8_u
       local.get $2
       i32.load8_u
       i32.ne
       br_if $~lib/util/memory/memcmp|inlined.3
       local.get $0
       i32.const 1
       i32.sub
       local.set $0
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $0
      i32.const 8
      i32.ge_u
      if
       local.get $2
       i64.load
       local.get $3
       i64.load
       i64.eq
       if
        local.get $2
        i32.const 8
        i32.add
        local.set $2
        local.get $3
        i32.const 8
        i32.add
        local.set $3
        local.get $0
        i32.const 8
        i32.sub
        local.set $0
        br $while-continue|1
       end
      end
     end
    end
    loop $while-continue|2
     local.get $0
     local.tee $1
     i32.const 1
     i32.sub
     local.set $0
     local.get $1
     if
      local.get $3
      i32.load8_u
      local.get $2
      i32.load8_u
      i32.ne
      br_if $~lib/util/memory/memcmp|inlined.3
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $while-continue|2
     end
    end
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#hasPointerStorageHash
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#indexOf
  i32.const -1
  i32.ne
  if
   local.get $0
   i32.load offset=4
   local.tee $0
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#indexOf
   local.tee $1
   i32.const -1
   i32.eq
   if
    i32.const 9968
    i32.const 10064
    i32.const 118
    i32.const 13
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.get $1
   call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
   return
  end
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 9888
   i32.const 5232
   i32.const 1144
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  local.set $3
  local.get $2
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 0
   i32.const 32
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $3
   i32.load offset=4
   local.get $2
   i32.load offset=4
   local.get $2
   i32.load offset=8
   i32.const 32
   i32.lt_s
   if (result i32)
    local.get $2
    i32.load offset=8
   else
    i32.const 32
   end
   memory.copy
  end
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/generic/MapUint8Array/MapUint8Array#set
  local.get $1
  i32.load
  local.get $3
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/storePointer
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=8
  i32.const 0
  local.get $1
  i32.eqz
  i32.eqz
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  local.tee $1
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 2304
   i32.const 5728
   i32.const 220
   i32.const 30
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  local.get $1
  i32.load offset=4
  local.tee $1
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  local.get $1
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  local.get $1
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  local.get $1
  i64.load
  call $~lib/polyfills/bswap<u64>
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  i32.store offset=12
  local.get $0
  i32.load offset=12
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.add
  local.tee $1
  local.get $0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
  if
   i32.const 10544
   i32.const 7104
   i32.const 55
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.store offset=12
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  i32.load
  local.get $0
  i32.load offset=12
  local.set $0
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $4
  i32.load offset=4
  local.tee $2
  local.get $0
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  i64.store
  local.get $2
  local.get $0
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  local.get $2
  local.get $0
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  i64.store offset=16
  local.get $2
  local.get $0
  i64.load
  call $~lib/polyfills/bswap<u64>
  i64.store offset=24
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/ReentrancyGuard#nonReentrantBefore (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  if
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.eq
   if
    local.get $0
    i32.load offset=8
    call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
    local.tee $1
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
    i32.eqz
    if
     i32.const 10448
     i32.const 10288
     i32.const 80
     i32.const 17
     call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
     unreachable
    end
    local.get $0
    i32.load offset=8
    local.get $1
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add
    call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
    local.get $1
    i64.load offset=24
    local.get $1
    i64.load offset=16
    local.get $1
    i64.load
    local.get $1
    i64.load offset=8
    i64.or
    i64.or
    i64.or
    i64.eqz
    if
     local.get $0
     i32.load offset=4
     i32.const 1
     call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value
    end
   end
  else
   local.get $0
   i32.load offset=4
   local.tee $1
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   local.get $1
   i32.load
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
   i32.store offset=8
   local.get $1
   i32.load offset=8
   i32.const 0
   call $~lib/typedarray/Uint8Array#__get
   i32.const 1
   i32.eq
   if
    i32.const 10208
    i32.const 10288
    i32.const 125
    i32.const 9
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $0
   i32.load offset=4
   i32.const 1
   call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredBoolean/StoredBoolean#set:value
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#___get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2176
   i32.const 2752
   i32.const 357
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.load offset=8
  local.get $0
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   return
  end
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=8
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#___get
    local.get $1
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#___get
    i32.ne
    if
     i32.const 0
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onlyDeployer (param $0 i32)
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:contractDeployer
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  i32.eqz
  if
   i32.const 10704
   i32.const 9744
   i32.const 132
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  i32.add
  local.tee $3
  local.get $0
  i32.lt_u
  if
   i32.const 0
   i32.const 2128
   i32.const 770
   i32.const 7
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/stub/__new
  local.tee $4
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $5
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $3
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $6
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $1
       local.get $5
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $6
       i32.or
       i32.store16
      else
       local.get $0
       local.get $3
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $2
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $5
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $5
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $6
        i32.const 6
        i32.shl
        i32.or
        local.get $2
        i32.or
        local.set $2
       else
        local.get $0
        local.get $3
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $5
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $6
        i32.const 12
        i32.shl
        i32.or
        local.get $2
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $2
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $2
       i32.const 65536
       i32.lt_u
       if
        local.get $1
        local.get $2
        i32.store16
       else
        local.get $1
        local.get $2
        i32.const 65536
        i32.sub
        local.tee $2
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $2
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 2
        i32.add
        local.set $1
       end
      end
     else
      local.get $1
      local.get $5
      i32.store16
     end
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $4
  local.get $1
  local.get $4
  i32.sub
  call $~lib/rt/stub/__renew
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32
  i32.const 1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  i32.load
  local.tee $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/string/String.UTF8.decodeUnsafe
 )
 (func $src/contract/OrdinalsVault/OrdinalsVault#hashString (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/string/String.UTF8.encode@varargs
  i32.const 1
  global.set $~argumentsLength
  call $~lib/typedarray/Uint8Array.wrap@varargs
  local.set $0
  i64.const -3750763034362895579
  local.set $1
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=8
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i64.extend_i32_u
    i64.xor
    i64.const 1099511628211
    i64.mul
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.2 (result i32)
   local.get $1
   i64.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.2
   end
   local.get $1
   i64.const 1
   i64.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.2
   end
   local.get $1
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256 (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 32
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.load offset=4
  local.tee $2
  local.get $1
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  i64.store
  local.get $2
  local.get $1
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  local.get $2
  local.get $1
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  i64.store offset=16
  local.get $2
  local.get $1
  i64.load
  call $~lib/polyfills/bswap<u64>
  i64.store offset=24
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 32
   i32.lt_s
   if
    local.get $0
    local.get $3
    local.get $1
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#getKeyPointer (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 64
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $2
  local.get $0
  i32.load offset=4
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
  local.get $2
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $0
  i32.load16_u
  local.get $2
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256
  i32.const 0
  i32.const 2032
  call $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#getKeyPointer
  local.set $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  local.tee $0
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 2304
   i32.const 5728
   i32.const 220
   i32.const 30
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load
  call $~lib/polyfills/bswap<u64>
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $src/contract/OrdinalsVault/OrdinalsVault#hashAddress (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.tee $4
  i32.const 20
  i32.sub
  i32.load offset=16
  local.tee $5
  i32.const 1
  i32.shl
  i32.const 2
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  i32.const 30768
  i32.store16
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $5
   i32.lt_u
   if
    local.get $2
    i32.const 2
    i32.add
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $4
    i32.add
    i32.load8_u
    i32.const 1
    i32.shl
    i32.const 1168
    i32.add
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/string/String.UTF8.decodeUnsafe
  i32.const 1
  global.set $~argumentsLength
  call $~lib/string/String.UTF8.encode@varargs
  i32.const 1
  global.set $~argumentsLength
  call $~lib/typedarray/Uint8Array.wrap@varargs
  local.set $0
  i64.const -3750763034362895579
  local.set $1
  loop $for-loop|00
   local.get $3
   local.get $0
   i32.load offset=8
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $3
    call $~lib/typedarray/Uint8Array#__get
    i64.extend_i32_u
    i64.xor
    i64.const 1099511628211
    i64.mul
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|00
   end
  end
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.3 (result i32)
   local.get $1
   i64.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.3
   end
   local.get $1
   i64.const 1
   i64.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.3
   end
   local.get $1
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#getKeyPointer
  local.set $3
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.load offset=4
  local.tee $1
  local.get $2
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  i64.store
  local.get $1
  local.get $2
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  local.get $1
  local.get $2
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  i64.store offset=16
  local.get $1
  local.get $2
  i64.load
  call $~lib/polyfills/bswap<u64>
  i64.store offset=24
  local.get $3
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
 )
 (func $src/contract/OrdinalsVault/OrdinalsVault#recordBurn (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $3
  i32.load offset=24
  i32.eqz
  if
   i32.const 10624
   i32.const 5232
   i32.const 145
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $3
  i32.load offset=24
  local.tee $3
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 147
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $3
  i32.load offset=4
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onlyDeployer
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
  local.set $1
  call $src/contract/OrdinalsVault/OrdinalsVault#hashString
  local.set $3
  local.get $0
  i32.load offset=104
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
  local.set $4
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $5
  local.get $4
  i64.load
  local.get $5
  i64.load
  i64.eq
  if (result i32)
   local.get $4
   i64.load offset=8
   local.get $5
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $4
   i64.load offset=16
   local.get $5
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $4
   i64.load offset=24
   local.get $5
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 10800
   i32.const 10896
   i32.const 101
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=112
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
  local.set $4
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $5
  local.get $4
  i64.load
  local.get $5
  i64.load
  i64.eq
  if (result i32)
   local.get $4
   i64.load offset=8
   local.get $5
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $4
   i64.load offset=16
   local.get $5
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $4
   i64.load offset=24
   local.get $5
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 10976
   i32.const 10896
   i32.const 105
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=104
  local.get $3
  local.get $1
  call $src/contract/OrdinalsVault/OrdinalsVault#hashAddress
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#set
  local.get $0
  i32.load offset=108
  local.get $3
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.4 (result i32)
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   local.tee $0
   i32.load offset=20
   i32.eqz
   if
    i32.const 11088
    i32.const 5232
    i32.const 118
    i32.const 13
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $0
   i32.load offset=20
   local.tee $0
   i32.eqz
   if
    i32.const 8064
    i32.const 5232
    i32.const 120
    i32.const 16
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $0
   i64.load offset=8
   local.tee $2
   i64.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.4
   end
   local.get $2
   i64.const 1
   i64.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.4
   end
   local.get $2
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#set
  i32.const 1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $0
  i32.const 1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address.zero (result i32)
  (local $0 i32)
  (local $1 i32)
  block $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#clone@override$607
   global.get $~lib/@btc-vision/btc-runtime/runtime/types/Address/ZERO_ADDRESS
   local.tee $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 15
   i32.eq
   if
    local.get $0
    call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#clone
    local.set $1
    br $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#clone@override$607
   end
   i32.const 0
   i32.const 0
   i32.const 0
   i32.const 10
   i32.const 11632
   call $~lib/rt/__newArray
   call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor
   local.tee $1
   i32.load offset=4
   local.get $0
   i32.load offset=4
   i32.const 32
   memory.copy
   local.get $1
   local.get $0
   i32.load8_u offset=12
   i32.store8 offset=12
  end
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_exists (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=64
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
  local.tee $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  i32.eqz
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_u256FromAddress (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 2304
   i32.const 5728
   i32.const 220
   i32.const 30
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load
  call $~lib/polyfills/bswap<u64>
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $~lib/util/hash/HASH<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address> (param $0 i32) (result i32)
  local.get $0
  i32.const -1028477379
  i32.mul
  i32.const 374761397
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  i32.const 15
  i32.shr_u
  local.get $0
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  i32.const 13
  i32.shr_u
  local.get $0
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  i32.const 16
  i32.shr_u
  local.get $0
  i32.xor
 )
 (func $"~lib/map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredU256Array/StoredU256Array>#find" (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load
     local.get $1
     call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
    end
    if
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/array/Array<u32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2176
   i32.const 4032
   i32.const 114
   i32.const 42
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 56
   i32.const 52
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store16 offset=40
  local.get $0
  local.get $2
  i32.store offset=44
  local.get $0
  local.get $3
  i32.store offset=48
  local.get $0
  i32.const -2
  i32.store offset=52
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store8 offset=16
  local.get $0
  i32.const 0
  i32.store8 offset=17
  i32.const 24
  i32.const 53
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $3
  i32.const 3
  i32.store offset=4
  local.get $3
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $3
  i32.const 4
  i32.store offset=12
  local.get $3
  i32.const 0
  i32.store offset=16
  local.get $3
  i32.const 0
  i32.store offset=20
  local.get $0
  local.get $3
  i32.store offset=20
  i32.const 24
  i32.const 54
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $3
  i32.const 3
  i32.store offset=4
  local.get $3
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $3
  i32.const 4
  i32.store offset=12
  local.get $3
  i32.const 0
  i32.store offset=16
  local.get $3
  i32.const 0
  i32.store offset=20
  local.get $0
  local.get $3
  i32.store offset=24
  local.get $0
  i32.const -1
  i32.store offset=28
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  i32.const 0
  i32.store offset=36
  local.get $1
  local.get $2
  i32.const 1
  i32.const 12016
  call $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer
  local.tee $1
  i32.load
  local.set $2
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  local.get $2
  call $~lib/typedarray/Uint8Array.wrap@varargs
  i32.store offset=4
  local.get $1
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 12080
   i32.const 8768
   i32.const 163
   i32.const 9
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i64.const 1
  local.set $5
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  loop $for-loop|0
   local.get $4
   i32.const 8
   i32.lt_s
   if
    local.get $2
    i32.const 31
    local.get $4
    i32.sub
    local.get $5
    i64.const 255
    i64.and
    i32.wrap_i64
    call $~lib/typedarray/Uint8Array#__set
    local.get $5
    i64.const 8
    i64.shr_u
    local.set $5
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $1
  i32.load offset=8
  i32.const 32
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.load offset=8
   i32.const 32
   i32.ne
  end
  if
   i32.const 12176
   i32.const 8768
   i32.const 48
   i32.const 9
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  i32.const 31
  local.set $4
  loop $for-loop|1
   local.get $4
   i32.const 0
   i32.ge_s
   if
    local.get $3
    local.get $4
    local.get $1
    local.get $4
    call $~lib/typedarray/Uint8Array#__get
    local.get $2
    local.get $4
    call $~lib/typedarray/Uint8Array#__get
    i32.add
    local.get $6
    i32.add
    local.tee $6
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $6
    i32.const 8
    i32.shr_u
    local.set $6
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|1
   end
  end
  local.get $0
  local.get $3
  i32.store
  block $~lib/@btc-vision/btc-runtime/runtime/math/bytes/readLengthAndStartIndex|inlined.0
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
   local.tee $1
   i32.load offset=8
   i32.const 16
   i32.lt_s
   if
    i32.const 2
    i32.const 2
    i32.const 60
    i32.const 12288
    call $~lib/rt/__newArray
    local.set $1
    br $~lib/@btc-vision/btc-runtime/runtime/math/bytes/readLengthAndStartIndex|inlined.0
   end
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor
   local.tee $1
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32
   local.set $2
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32
   local.set $3
   i32.const 2
   i32.const 2
   i32.const 60
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.const 0
   local.get $2
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
   local.get $1
   i32.const 1
   local.get $3
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  end
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.store offset=12
  local.get $0
 )
 (func $"~lib/map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredU256Array/StoredU256Array>#rehash" (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $6
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $7
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $4
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $7
   i32.ne
   if
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $7
     i32.load
     local.tee $8
     i32.store
     local.get $2
     local.get $7
     i32.load offset=4
     i32.store offset=4
     local.get $2
     local.get $6
     local.get $8
     call $~lib/util/hash/HASH<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address>
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=8
     local.get $8
     local.get $2
     i32.store
     local.get $2
     i32.const 12
     i32.add
     local.set $2
    end
    local.get $7
    i32.const 12
    i32.add
    local.set $7
    br $while-continue|0
   end
  end
  local.get $0
  local.get $6
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
  local.get $5
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $"~lib/map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredU256Array/StoredU256Array>#set" (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address>
  local.tee $3
  call $"~lib/map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredU256Array/StoredU256Array>#find"
  local.tee $4
  if
   local.get $4
   local.get $2
   i32.store offset=4
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $"~lib/map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredU256Array/StoredU256Array>#rehash"
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 12
   i32.mul
   i32.add
   local.tee $4
   local.get $1
   i32.store
   local.get $4
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $4
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $4
   i32.store
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_getOwnerTokenArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 30
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  loop $for-loop|0
   local.get $2
   i32.const 30
   i32.lt_s
   if
    local.get $3
    local.get $2
    local.get $1
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#___get
    call $~lib/typedarray/Uint8Array#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $0
  i32.load offset=92
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address>
  call $"~lib/map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredU256Array/StoredU256Array>#find"
  i32.eqz
  if
   i32.const 2
   global.set $~argumentsLength
   global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/ownerTokensMapPointer
   local.set $2
   i32.const 56
   i32.const 51
   call $~lib/rt/stub/__new
   local.get $2
   local.get $3
   i64.const 0
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#constructor
   local.set $2
   local.get $0
   i32.load offset=92
   local.get $1
   local.get $2
   call $"~lib/map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredU256Array/StoredU256Array>#set"
  end
  local.get $0
  i32.load offset=92
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address>
  call $"~lib/map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredU256Array/StoredU256Array>#find"
  local.tee $0
  i32.eqz
  if
   i32.const 12320
   i32.const 12384
   i32.const 105
   i32.const 17
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#find" (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load
     local.get $1
     i32.eq
    end
    if
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#has" (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address>
  call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#find"
  i32.const 0
  i32.ne
 )
 (func $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#get" (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address>
  call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#find"
  local.tee $0
  i32.eqz
  if
   i32.const 12320
   i32.const 12384
   i32.const 105
   i32.const 17
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#set" (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address>
  local.tee $3
  call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#find"
  local.tee $4
  if
   local.get $4
   local.get $2
   i32.store offset=4
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $"~lib/map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredU256Array/StoredU256Array>#rehash"
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 12
   i32.mul
   i32.add
   local.tee $4
   local.get $1
   i32.store
   local.get $4
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $4
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $4
   i32.store
  end
 )
 (func $~lib/set/Set<u32>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $6
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 3
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $7
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  i32.add
  local.set $4
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $7
   i32.ne
   if
    local.get $7
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $7
     i32.load
     local.tee $8
     i32.store
     local.get $2
     local.get $6
     local.get $8
     call $~lib/util/hash/HASH<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address>
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=4
     local.get $8
     local.get $2
     i32.store
     local.get $2
     i32.const 8
     i32.add
     local.set $2
    end
    local.get $7
    i32.const 8
    i32.add
    local.set $7
    br $while-continue|0
   end
  end
  local.get $0
  local.get $6
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
  local.get $5
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/set/Set<u32>#add (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/util/hash/HASH<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address>
  local.set $3
  local.get $1
  local.set $2
  local.get $0
  i32.load
  local.get $3
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $1
  block $__inlined_func$~lib/set/Set<u32>#find$1572
   loop $while-continue|0
    local.get $1
    if
     local.get $1
     i32.load offset=4
     local.tee $4
     i32.const 1
     i32.and
     if (result i32)
      i32.const 0
     else
      local.get $1
      i32.load
      local.get $2
      i32.eq
     end
     br_if $__inlined_func$~lib/set/Set<u32>#find$1572
     local.get $4
     i32.const -2
     i32.and
     local.set $1
     br $while-continue|0
    end
   end
   i32.const 0
   local.set $1
  end
  local.get $1
  i32.eqz
  if
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/set/Set<u32>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 3
   i32.shl
   i32.add
   local.tee $1
   local.get $2
   i32.store
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $1
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU32 (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 4
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  call $~lib/dataview/DataView#setUint32
  local.get $0
  local.get $0
  i32.load
  i32.const 4
  i32.add
  i32.store
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#save (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=24
  local.tee $5
  i32.load offset=8
  local.set $4
  local.get $5
  i32.load offset=16
  local.set $5
  i32.const 16
  i32.const 60
  call $~lib/rt/stub/__new
  local.tee $6
  i32.const 0
  i32.store
  local.get $6
  i32.const 0
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.store offset=8
  local.get $6
  i32.const 0
  i32.store offset=12
  local.get $5
  i32.const 268435455
  i32.gt_u
  if
   i32.const 2304
   i32.const 4032
   i32.const 70
   i32.const 60
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 8
  local.get $5
  local.get $5
  i32.const 8
  i32.le_u
  select
  i32.const 2
  i32.shl
  local.tee $7
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $8
  i32.const 0
  local.get $7
  memory.fill
  local.get $6
  local.get $8
  i32.store
  local.get $6
  local.get $8
  i32.store offset=4
  local.get $6
  local.get $7
  i32.store offset=8
  local.get $6
  local.get $5
  i32.store offset=12
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    local.tee $7
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $6
     local.get $1
     local.get $7
     i32.load
     call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $6
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $6
  local.get $1
  i32.store offset=12
  local.get $6
  i32.load offset=12
  local.set $1
  loop $for-loop|00
   local.get $1
   local.get $3
   i32.gt_s
   if
    local.get $6
    local.get $3
    call $~lib/array/Array<u32>#__get
    local.set $2
    local.get $0
    i32.load offset=20
    local.get $2
    call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#get"
    local.tee $4
    if
     local.get $0
     local.get $2
     i64.extend_i32_u
     call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#calculateStoragePointer@override
     local.set $2
     global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
     local.get $2
     local.get $4
     call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|00
   end
  end
  local.get $0
  i32.load offset=24
  local.tee $1
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $1
  i32.const 3
  i32.store offset=4
  local.get $1
  i32.const 32
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $0
  i32.load8_u offset=16
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load8_u offset=17
  end
  if
   local.get $0
   i32.load offset=8
   local.set $1
   local.get $0
   i32.load offset=12
   local.set $2
   i32.const 32
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
   local.tee $3
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU32
   local.get $3
   local.get $2
   call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU32
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   local.get $0
   i32.load offset=4
   local.get $3
   i32.load offset=8
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
   local.get $0
   i32.const 0
   i32.store8 offset=16
   local.get $0
   i32.const 0
   i32.store8 offset=17
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_addTokenToOwnerEnumeration (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_getOwnerTokenArray
  local.tee $4
  i32.load offset=8
  local.set $6
  local.get $4
  local.tee $1
  i32.load offset=8
  local.get $1
  i32.load offset=52
  i32.ge_u
  if
   i32.const 12432
   i32.const 12528
   i32.const 225
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  i32.load offset=12
  local.get $1
  i32.load offset=8
  i32.add
  local.get $1
  i32.load offset=52
  i32.rem_u
  local.set $5
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#getSlotCapacity@override
  block $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#ensureSlot|inlined.0
   local.get $5
   local.get $1
   local.tee $3
   i32.load offset=28
   i32.eq
   if
    local.get $3
    i32.load offset=32
    local.tee $1
    i32.eqz
    if
     i32.const 8064
     i32.const 12528
     i32.const 527
     i32.const 32
     call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
     unreachable
    end
    br $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#ensureSlot|inlined.0
   end
   local.get $3
   i32.load offset=20
   local.get $5
   call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#has"
   if
    local.get $3
    i32.load offset=20
    local.get $5
    call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#get"
    local.set $1
   else
    local.get $3
    local.get $5
    i64.extend_i32_u
    call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#calculateStoragePointer@override
    local.set $1
    global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
    local.set $1
    local.get $3
    i32.load offset=20
    local.get $5
    local.get $1
    call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#set"
   end
   local.get $3
   local.get $5
   i32.store offset=28
   local.get $3
   local.get $1
   i32.store offset=32
  end
  local.get $3
  local.get $3
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#unpackSlot@override
  local.tee $1
  i32.const 0
  call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#eq@override
  i32.eqz
  if
   local.get $1
   i32.const 0
   local.get $2
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
   local.get $3
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#packSlot@override
   local.set $1
   local.get $3
   i32.load offset=20
   local.get $5
   local.get $1
   call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#set"
   local.get $3
   i32.load offset=24
   local.get $5
   call $~lib/set/Set<u32>#add
   local.get $3
   local.get $5
   i32.store offset=28
   local.get $3
   local.get $1
   i32.store offset=32
  end
  local.get $3
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.add
  i32.store offset=8
  local.get $3
  i32.const 1
  i32.store8 offset=16
  local.get $0
  i32.load offset=96
  local.get $2
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU32|inlined.4 (result i32)
   local.get $6
   i32.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU32|inlined.4
   end
   local.get $6
   i32.const 1
   i32.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU32|inlined.4
   end
   local.get $6
   i64.extend_i32_u
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#set
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#save
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#encodePointer (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load16_u
  local.get $1
  i32.const 0
  i32.const 30
  call $~lib/typedarray/Uint8Array#slice
  i32.const 1
  i32.const 12704
  call $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#encodePointer
  local.set $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  local.tee $0
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 2304
   i32.const 5728
   i32.const 220
   i32.const 30
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load
  call $~lib/polyfills/bswap<u64>
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $4
  i32.load offset=4
  local.tee $3
  local.get $2
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  i64.store
  local.get $3
  local.get $2
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  local.get $3
  local.get $2
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  i64.store offset=16
  local.get $3
  local.get $2
  i64.load
  call $~lib/polyfills/bswap<u64>
  i64.store offset=24
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#encodePointer
  local.set $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/events/NetEvent/NetEvent#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 62
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store
  local.get $2
  i32.load offset=4
  i32.load offset=8
  i32.const 352
  i32.gt_u
  if
   i32.const 12768
   i32.const 12880
   i32.const 14
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  local.get $2
  i32.load offset=8
  i32.store
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#emitEvent (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 13072
   i32.const 12880
   i32.const 22
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load
  i32.load offset=8
  i32.const 352
  i32.gt_u
  if
   i32.const 12768
   i32.const 9744
   i32.const 115
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load
  i32.eqz
  if
   i32.const 13072
   i32.const 12880
   i32.const 30
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $5
  call $~lib/string/String.UTF8.byteLength
  local.set $6
  i32.const 0
  local.get $1
  i32.load offset=8
  local.get $6
  i32.const 8
  i32.add
  i32.add
  local.tee $2
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.load offset=4
  local.tee $0
  local.get $6
  call $~lib/polyfills/bswap<u32>
  i32.store
  local.get $5
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $4
  i32.const 3
  global.set $~argumentsLength
  local.get $5
  local.get $4
  local.get $0
  i32.const 4
  i32.add
  call $~lib/string/String.UTF8.encodeUnsafe
  local.get $6
  i32.const 4
  i32.add
  local.get $0
  i32.add
  local.tee $0
  local.get $1
  i32.load offset=8
  call $~lib/polyfills/bswap<u32>
  i32.store
  local.get $0
  i32.const 4
  i32.add
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  memory.copy
  local.get $3
  i32.load
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/emit
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#createTransferEvent (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $3
  i32.load offset=24
  i32.eqz
  if
   i32.const 10624
   i32.const 5232
   i32.const 145
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $3
  i32.load offset=24
  local.tee $3
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 147
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 63
  call $~lib/rt/stub/__new
  i32.const 128
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $4
  local.get $5
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $4
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $4
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $4
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  i32.const 13024
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/events/NetEvent/NetEvent#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#emitEvent
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_mint (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address.zero
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  if
   i32.const 11664
   i32.const 11744
   i32.const 609
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_exists
  if
   i32.const 11888
   i32.const 11744
   i32.const 612
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=48
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  local.tee $3
  i64.load offset=24
  local.get $3
  i64.load offset=16
  local.get $3
  i64.load
  local.get $3
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load offset=44
   call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
   local.get $0
   i32.load offset=48
   call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
  end
  i32.eqz
  if
   i32.const 11952
   i32.const 11744
   i32.const 615
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=64
  local.get $2
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_u256FromAddress
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#set
  local.get $0
  local.get $1
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_addTokenToOwnerEnumeration
  local.get $0
  i32.load offset=72
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#get
  local.set $3
  local.get $0
  i32.load offset=72
  local.get $1
  local.get $3
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#set
  local.get $0
  i32.load offset=44
  local.get $0
  i32.load offset=44
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address.zero
  local.get $1
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#createTransferEvent
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#getPointer (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#getClassName@override
  local.get $0
  i32.load16_u offset=8
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.const 18096
  call $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer
  local.tee $4
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 12080
   i32.const 8768
   i32.const 163
   i32.const 9
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.set $5
  loop $for-loop|0
   local.get $2
   i32.const 8
   i32.lt_s
   if
    local.get $5
    i32.const 31
    local.get $2
    i32.sub
    local.get $1
    i64.const 255
    i64.and
    i32.wrap_i64
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i64.const 8
    i64.shr_u
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  i32.load offset=8
  i32.const 32
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $5
   i32.load offset=8
   i32.const 32
   i32.ne
  end
  if
   i32.const 12176
   i32.const 8768
   i32.const 48
   i32.const 9
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  i32.const 31
  local.set $2
  loop $for-loop|1
   local.get $2
   i32.const 0
   i32.ge_s
   if
    local.get $0
    local.get $2
    local.get $4
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    local.get $5
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.add
    local.get $3
    i32.add
    local.tee $3
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $3
    i32.const 8
    i32.shr_u
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $for-loop|1
   end
  end
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  i64.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#getPointer
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  local.tee $1
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 24
  i32.shl
  local.get $1
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 16
  i32.shl
  i32.or
  local.get $1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 8
  i32.shl
  i32.or
  local.get $1
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  i32.or
  local.tee $1
  if
   i64.const 1
   local.get $1
   i32.const 28
   i32.sub
   i64.extend_i32_u
   i64.const 0
   local.get $1
   i32.const 28
   i32.gt_u
   select
   local.tee $6
   i64.const 31
   i64.add
   i64.const 5
   i64.shr_u
   i64.const 1
   i64.add
   local.get $6
   i64.eqz
   select
   local.set $6
   loop $for-loop|0
    local.get $3
    local.get $6
    i64.lt_u
    if
     global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
     local.get $0
     local.get $3
     call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#getPointer
     i32.const 0
     i32.const 32
     call $~lib/typedarray/Uint8Array#constructor
     call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
     local.get $3
     i64.const 1
     i64.add
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $0
  i32.load offset=12
  i32.const 2
  global.set $~argumentsLength
  call $~lib/string/String.UTF8.encode@varargs
  local.tee $1
  i32.const 20
  i32.sub
  i32.load offset=16
  local.tee $7
  local.get $0
  i32.load
  i32.gt_u
  if
   local.get $0
   call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#getClassName@override
   local.get $0
   i32.load
   call $~lib/util/number/utoa32
   local.set $0
   i32.const 13360
   i32.const 0
   i32.const 18096
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 13360
   i32.const 2
   local.get $0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 13360
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 13408
   i32.const 111
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $7
  i32.eqz
  if
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   local.get $0
   i64.const 0
   call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#getPointer
   i32.const 0
   i32.const 32
   call $~lib/typedarray/Uint8Array#constructor
   call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
   return
  end
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $8
  i32.const 0
  local.get $7
  i32.const 24
  i32.shr_u
  call $~lib/typedarray/Uint8Array#__set
  local.get $8
  i32.const 1
  local.get $7
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $8
  i32.const 2
  local.get $7
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $8
  i32.const 3
  local.get $7
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  call $~lib/typedarray/Uint8Array.wrap@varargs
  local.set $5
  i32.const 28
  local.get $7
  local.get $7
  i32.const 28
  i32.ge_u
  select
  local.set $4
  loop $for-loop|00
   local.get $2
   local.get $4
   i32.lt_u
   if
    local.get $8
    local.get $2
    i32.const 4
    i32.add
    local.get $5
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/typedarray/Uint8Array#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|00
   end
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  i64.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#getPointer
  local.get $8
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
  local.get $7
  local.get $4
  i32.sub
  local.set $2
  i64.const 1
  local.set $3
  loop $while-continue|1
   local.get $2
   if
    i32.const 0
    i32.const 32
    call $~lib/typedarray/Uint8Array#constructor
    local.set $7
    i32.const 32
    local.get $2
    local.get $2
    i32.const 32
    i32.ge_u
    select
    local.set $8
    i32.const 0
    local.set $1
    loop $for-loop|2
     local.get $1
     local.get $8
     i32.lt_u
     if
      local.get $7
      local.get $1
      local.get $5
      local.get $1
      local.get $4
      i32.add
      call $~lib/typedarray/Uint8Array#__get
      call $~lib/typedarray/Uint8Array#__set
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|2
     end
    end
    global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
    local.get $0
    local.get $3
    call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#getPointer
    local.get $7
    call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
    local.get $2
    local.get $8
    i32.sub
    local.set $2
    local.get $4
    local.get $8
    i32.add
    local.set $4
    local.get $3
    i64.const 1
    i64.add
    local.set $3
    br $while-continue|1
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.encode@varargs
  local.tee $1
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU32
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  local.get $1
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_setTokenURI (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_exists
  i32.eqz
  if
   i32.const 13136
   i32.const 11744
   i32.const 780
   i32.const 37
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 200
  i32.gt_u
  if
   i32.const 13200
   i32.const 11744
   i32.const 783
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=60
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  i64.load
  i32.wrap_i64
  local.set $3
  global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenURIMapPointer
  local.get $3
  i64.extend_i32_u
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString#constructor
  local.tee $4
  local.get $2
  i32.store offset=12
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
  local.get $0
  i32.load offset=84
  local.get $1
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU32|inlined.5 (result i32)
   local.get $3
   i32.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU32|inlined.5
   end
   local.get $3
   i32.const 1
   i32.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU32|inlined.5
   end
   local.get $3
   i64.extend_i32_u
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#set
  local.get $0
  i32.load offset=60
  local.get $0
  i32.load offset=60
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  local.get $0
  i32.load offset=88
  local.get $3
  local.get $4
  call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#set"
  i32.const 12
  i32.const 64
  call $~lib/rt/stub/__new
  local.get $2
  call $~lib/string/String.UTF8.byteLength
  local.tee $3
  i32.const 200
  i32.gt_u
  if
   i32.const 13568
   i32.const 13664
   i32.const 15
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $3
  i32.const 36
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $3
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
  local.get $3
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  i32.const 13824
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/events/NetEvent/NetEvent#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#emitEvent
 )
 (func $src/contract/OrdinalsVault/OrdinalsVault#mint (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength
  local.set $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $2
  i32.load offset=24
  i32.eqz
  if
   i32.const 10624
   i32.const 5232
   i32.const 145
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  i32.load offset=24
  local.tee $2
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 147
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  i32.load offset=4
  local.set $2
  local.get $1
  call $src/contract/OrdinalsVault/OrdinalsVault#hashString
  local.set $4
  local.get $0
  i32.load offset=104
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
  local.set $5
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $6
  local.get $5
  i64.load
  local.get $6
  i64.load
  i64.eq
  if (result i32)
   local.get $5
   i64.load offset=8
   local.get $6
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $5
   i64.load offset=16
   local.get $6
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $5
   i64.load offset=24
   local.get $6
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  if
   i32.const 11152
   i32.const 10896
   i32.const 137
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  call $src/contract/OrdinalsVault/OrdinalsVault#hashAddress
  local.set $6
  local.get $5
  i64.load
  local.get $6
  i64.load
  i64.eq
  if (result i32)
   local.get $5
   i64.load offset=8
   local.get $6
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $5
   i64.load offset=16
   local.get $6
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $5
   i64.load offset=24
   local.get $6
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 11264
   i32.const 10896
   i32.const 141
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=108
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
  block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.5 (result i32)
   global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
   local.tee $5
   i32.load offset=20
   i32.eqz
   if
    i32.const 11088
    i32.const 5232
    i32.const 118
    i32.const 13
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $5
   i32.load offset=20
   local.tee $5
   i32.eqz
   if
    i32.const 8064
    i32.const 5232
    i32.const 120
    i32.const 16
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $5
   i64.load offset=8
   local.tee $3
   i64.eqz
   if
    i64.const 0
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.5
   end
   local.get $3
   i64.const 1
   i64.eq
   if
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU64|inlined.5
   end
   local.get $3
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
  i32.eqz
  if
   i32.const 11392
   i32.const 10896
   i32.const 147
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=112
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
  local.set $5
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $6
  local.get $5
  i64.load
  local.get $6
  i64.load
  i64.eq
  if (result i32)
   local.get $5
   i64.load offset=8
   local.get $6
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $5
   i64.load offset=16
   local.get $6
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $5
   i64.load offset=24
   local.get $6
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 10976
   i32.const 10896
   i32.const 151
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=52
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  local.tee $5
  local.get $0
  i32.load offset=48
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
  i32.eqz
  if
   i32.const 11536
   i32.const 10896
   i32.const 156
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  local.get $2
  local.get $5
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_mint
  local.get $0
  i32.load offset=52
  local.get $5
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  local.get $0
  local.get $5
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_setTokenURI
  local.get $0
  i32.load offset=112
  local.get $4
  local.get $5
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#set
  i32.const 32
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $0
  local.get $5
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $0
 )
 (func $src/contract/OrdinalsVault/OrdinalsVault#getBurnStatus (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength
  call $src/contract/OrdinalsVault/OrdinalsVault#hashString
  local.set $2
  local.get $0
  i32.load offset=104
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
  local.set $3
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $1
  local.get $3
  i64.load
  local.get $1
  i64.load
  i64.eq
  if (result i32)
   local.get $3
   i64.load offset=8
   local.get $1
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $3
   i64.load offset=16
   local.get $1
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $3
   i64.load offset=24
   local.get $1
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  i32.eqz
  local.set $1
  local.get $0
  i32.load offset=112
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
  local.set $0
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.set $2
  local.get $0
  i64.load
  local.get $2
  i64.load
  i64.eq
  if (result i32)
   local.get $0
   i64.load offset=8
   local.get $2
   i64.load offset=8
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=16
   local.get $2
   i64.load offset=16
   i64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i64.load offset=24
   local.get $2
   i64.load offset=24
   i64.eq
  else
   i32.const 0
  end
  local.set $0
  i32.const 2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $2
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
  local.get $2
  local.get $0
  i32.eqz
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
  local.get $2
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#load (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  i64.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#getPointer
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 24
  i32.shl
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 16
  i32.shl
  i32.or
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 8
  i32.shl
  i32.or
  local.get $2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  i32.or
  local.tee $6
  i32.eqz
  if
   local.get $0
   i32.const 2032
   i32.store offset=12
   return
  end
  i32.const 0
  local.get $6
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 28
  local.get $6
  local.get $6
  i32.const 28
  i32.ge_u
  select
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.lt_u
   if
    local.get $4
    local.get $1
    local.get $2
    local.get $1
    i32.const 4
    i32.add
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $6
  local.get $3
  i32.sub
  local.set $1
  i64.const 1
  local.set $5
  loop $while-continue|1
   local.get $1
   if
    global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
    local.get $0
    local.get $5
    call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#getPointer
    call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
    local.set $7
    i32.const 32
    local.get $1
    local.get $1
    i32.const 32
    i32.ge_u
    select
    local.set $6
    i32.const 0
    local.set $2
    loop $for-loop|2
     local.get $2
     local.get $6
     i32.lt_u
     if
      local.get $4
      local.get $2
      local.get $3
      i32.add
      local.get $7
      local.get $2
      call $~lib/typedarray/Uint8Array#__get
      call $~lib/typedarray/Uint8Array#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|2
     end
    end
    local.get $1
    local.get $6
    i32.sub
    local.set $1
    local.get $3
    local.get $6
    i32.add
    local.set $3
    local.get $5
    i64.const 1
    i64.add
    local.set $5
    br $while-continue|1
   end
  end
  local.get $0
  local.get $4
  i32.load
  local.tee $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/string/String.UTF8.decodeUnsafe
  i32.store offset=12
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  if (result i32)
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
  else
   i32.const 0
  end
  i32.eqz
  if
   local.get $0
   call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#load
  end
  local.get $0
  i32.load offset=12
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 32
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#verifyEnd
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.set $1
  loop $for-loop|0
   local.get $2
   i32.const 32
   i32.lt_s
   if
    local.get $1
    local.get $2
    local.get $0
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  i32.load offset=12
  i32.const 32
  i32.ne
  if
   i32.const 2304
   i32.const 5728
   i32.const 186
   i32.const 30
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.tee $0
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load
  call $~lib/polyfills/bswap<u64>
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $~lib/@btc-vision/as-bignum/assembly/utils/processU64 (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $3
  i32.const 63
  local.set $4
  loop $for-loop|0
   local.get $4
   i32.const -1
   i32.ne
   if
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $3
     i32.le_s
     if
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Uint8Array#__get
      local.get $0
      local.get $2
      call $~lib/typedarray/Uint8Array#__get
      i32.const 5
      i32.ge_u
      i32.const 3
      i32.mul
      i32.add
      call $~lib/typedarray/Uint8Array#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    local.set $2
    loop $for-loop|2
     local.get $2
     i32.const -1
     i32.ne
     if
      local.get $0
      local.get $2
      call $~lib/typedarray/Uint8Array#__get
      i32.const 1
      i32.shl
      local.set $5
      local.get $2
      local.get $3
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.add
       local.tee $6
       local.get $0
       local.get $6
       call $~lib/typedarray/Uint8Array#__get
       local.get $5
       i32.const 255
       i32.and
       i32.const 15
       i32.gt_u
       i32.or
       call $~lib/typedarray/Uint8Array#__set
      end
      local.get $0
      local.get $2
      local.get $5
      i32.const 15
      i32.and
      call $~lib/typedarray/Uint8Array#__set
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $for-loop|2
     end
    end
    local.get $0
    i32.const 0
    local.get $0
    i32.const 0
    call $~lib/typedarray/Uint8Array#__get
    local.get $1
    i64.const 1
    local.get $4
    i64.extend_i32_s
    i64.shl
    i64.and
    i64.const 0
    i64.ne
    i32.add
    call $~lib/typedarray/Uint8Array#__set
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#tokenURI (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
  local.tee $1
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_exists
  i32.eqz
  if
   i32.const 13136
   i32.const 11744
   i32.const 236
   i32.const 37
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=84
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
  local.tee $3
  i64.load offset=24
  local.get $3
  i64.load offset=16
  local.get $3
  i64.load
  local.get $3
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if (result i32)
   local.get $0
   i32.load offset=24
   call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
   i32.const 1904
   local.set $0
   local.get $1
   i64.load offset=24
   local.get $1
   i64.load offset=16
   local.get $1
   i64.load
   local.get $1
   i64.load offset=8
   i64.or
   i64.or
   i64.or
   i64.eqz
   i32.eqz
   if
    i32.const 2032
    local.set $0
    i32.const 0
    i32.const 78
    call $~lib/typedarray/Uint8Array#constructor
    local.tee $5
    local.get $1
    i64.load offset=24
    call $~lib/@btc-vision/as-bignum/assembly/utils/processU64
    local.get $5
    local.get $1
    i64.load offset=16
    call $~lib/@btc-vision/as-bignum/assembly/utils/processU64
    local.get $5
    local.get $1
    i64.load offset=8
    call $~lib/@btc-vision/as-bignum/assembly/utils/processU64
    local.get $5
    local.get $1
    i64.load
    call $~lib/@btc-vision/as-bignum/assembly/utils/processU64
    i32.const 77
    local.set $1
    loop $for-loop|0
     local.get $1
     i32.const -1
     i32.ne
     if
      i32.const 1
      local.get $2
      local.get $2
      i32.eqz
      local.get $5
      local.get $1
      call $~lib/typedarray/Uint8Array#__get
      local.tee $6
      i32.const 0
      i32.ne
      i32.and
      select
      local.tee $2
      if
       local.get $6
       i32.const 9
       i32.gt_u
       if
        i32.const 0
        i32.const 14032
        i32.const 144
        i32.const 7
        call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
        unreachable
       end
       i32.const 1
       global.set $~argumentsLength
       i32.const 2
       i32.const 2
       call $~lib/rt/stub/__new
       local.tee $4
       local.get $6
       i32.const 48
       i32.add
       i32.store16
       local.get $0
       local.get $4
       call $~lib/string/String#concat
       local.set $0
      end
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      br $for-loop|0
     end
    end
   end
   local.get $0
   call $~lib/string/String#concat
  else
   local.get $0
   i32.load offset=88
   local.get $3
   i64.load
   i32.wrap_i64
   local.tee $1
   call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#has"
   i32.eqz
   if
    global.get $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/tokenURIMapPointer
    local.get $1
    i64.extend_i32_u
    call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredString/StoredString#constructor
    local.set $2
    local.get $0
    i32.load offset=88
    local.get $1
    local.get $2
    call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#set"
   end
   local.get $0
   i32.load offset=88
   local.get $1
   call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#get"
   call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
  end
  local.tee $0
  call $~lib/string/String.UTF8.byteLength
  i32.const 4
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $1
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#changeMetadata (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $2
  i32.load offset=24
  i32.eqz
  if
   i32.const 10624
   i32.const 5232
   i32.const 145
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  i32.load offset=24
  local.tee $2
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 147
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  i32.load offset=4
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onlyDeployer
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength
  local.set $3
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength
  local.set $4
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength
  local.set $2
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength
  local.set $1
  local.get $3
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.eqz
  if
   i32.const 14144
   i32.const 11744
   i32.const 270
   i32.const 31
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $4
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.eqz
  if
   i32.const 14208
   i32.const 11744
   i32.const 271
   i32.const 33
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.eqz
  if
   i32.const 14272
   i32.const 11744
   i32.const 272
   i32.const 38
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.eqz
  if
   i32.const 14352
   i32.const 11744
   i32.const 273
   i32.const 34
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=32
  local.tee $5
  local.get $3
  i32.store offset=12
  local.get $5
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
  local.get $0
  i32.load offset=28
  local.tee $3
  local.get $4
  i32.store offset=12
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
  local.get $0
  i32.load offset=36
  local.tee $3
  local.get $2
  i32.store offset=12
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
  local.get $0
  i32.load offset=40
  local.tee $0
  local.get $1
  i32.store offset=12
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_balanceOf (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address.zero
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  if
   i32.const 14432
   i32.const 11744
   i32.const 774
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=72
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#get
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_addressFromU256 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.load offset=4
  local.tee $2
  local.get $0
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  i64.store
  local.get $2
  local.get $0
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  local.get $2
  local.get $0
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  i64.store offset=16
  local.get $2
  local.get $0
  i64.load
  call $~lib/polyfills/bswap<u64>
  i64.store offset=24
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 10
  i32.const 14496
  call $~lib/rt/__newArray
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#constructor
  local.set $0
  loop $for-loop|0
   local.get $1
   i32.const 32
   i32.lt_s
   if
    local.get $0
    local.get $1
    local.get $3
    local.get $1
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#___set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_ownerOf (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=64
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
  local.tee $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if
   i32.const 13136
   i32.const 11744
   i32.const 767
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_addressFromU256
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 6
  i32.const 45
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store16 offset=4
  local.get $2
  local.get $1
  i32.store16 offset=4
  local.get $2
  local.get $0
  i32.store
  local.get $2
 )
 (func $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#set" (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=8
  i32.const -1
  i32.ne
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=8
   call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
   if
    local.get $0
    i32.load offset=4
    local.get $0
    i32.load offset=8
    local.get $2
    call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
    local.get $0
    return
   end
  end
  local.get $0
  local.get $1
  call $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#indexOf@override"
  local.tee $3
  i32.const -1
  i32.eq
  if
   local.get $0
   i32.load
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
   local.get $0
   i32.load offset=4
   local.get $2
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
   local.get $0
   local.get $0
   i32.load
   i32.load offset=12
   i32.const 1
   i32.sub
   i32.store offset=8
  else
   local.get $0
   i32.load offset=4
   local.get $3
   local.get $2
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
   local.get $0
   local.get $3
   i32.store offset=8
  end
  local.get $0
 )
 (func $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#get" (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#indexOf@override"
  local.tee $1
  i32.const -1
  i32.eq
  if
   i32.const 14688
   i32.const 14768
   i32.const 92
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#getKeyHash (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.load offset=8
  local.get $0
  i32.load
  i32.load offset=8
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $2
  local.get $0
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
  local.get $2
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
  local.get $0
  i32.load16_u offset=4
  local.get $2
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256
  i32.const 0
  i32.const 2032
  call $~lib/@btc-vision/btc-runtime/runtime/math/abi/encodePointer
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_isApprovedForAll (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load offset=76
  local.tee $0
  local.get $1
  call $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#indexOf@override"
  i32.const -1
  i32.eq
  if
   local.get $0
   local.get $1
   local.get $1
   local.get $0
   i32.load16_u offset=12
   call $~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#constructor
   call $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#set"
   drop
  end
  local.get $0
  local.get $1
  call $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#get"
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#getKeyHash
  local.set $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
  local.tee $0
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 2304
   i32.const 5728
   i32.const 220
   i32.const 30
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  local.get $0
  i64.load
  call $~lib/polyfills/bswap<u64>
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  local.tee $0
  i64.load offset=24
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  i32.eqz
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#delete (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#getKeyPointer
  local.set $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/math/bytes/EMPTY_BUFFER
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_removeTokenFromOwnerEnumeration (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_getOwnerTokenArray
  local.tee $3
  i32.load offset=8
  local.tee $1
  i32.eqz
  if
   i32.const 14976
   i32.const 11744
   i32.const 948
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  block $folding-inner0
   local.get $0
   i32.load offset=96
   local.get $2
   call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
   i64.load
   i32.wrap_i64
   local.tee $5
   local.get $1
   i32.const 1
   i32.sub
   local.tee $1
   i32.ne
   if
    local.get $1
    local.get $3
    i32.load offset=52
    i32.ge_u
    if
     i32.const 15040
     i32.const 12528
     i32.const 110
     i32.const 13
     call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
     unreachable
    end
    local.get $3
    i32.load offset=12
    local.get $1
    i32.add
    local.get $3
    i32.load offset=52
    i32.rem_u
    local.set $4
    local.get $3
    call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#getSlotCapacity@override
    block $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#ensureSlot|inlined.1
     local.get $4
     local.get $3
     i32.load offset=28
     i32.eq
     if
      local.get $3
      i32.load offset=32
      local.tee $1
      i32.eqz
      br_if $folding-inner0
      br $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#ensureSlot|inlined.1
     end
     local.get $3
     i32.load offset=20
     local.get $4
     call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#has"
     if
      local.get $3
      i32.load offset=20
      local.get $4
      call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#get"
      local.set $1
     else
      local.get $3
      local.get $4
      i64.extend_i32_u
      call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#calculateStoragePointer@override
      local.set $1
      global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
      local.get $1
      call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
      local.set $1
      local.get $3
      i32.load offset=20
      local.get $4
      local.get $1
      call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#set"
     end
     local.get $3
     local.get $4
     i32.store offset=28
     local.get $3
     local.get $1
     i32.store offset=32
    end
    local.get $3
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#unpackSlot@override
    i32.const 0
    call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
    local.set $6
    local.get $5
    local.get $3
    i32.load offset=52
    i32.ge_u
    if
     i32.const 15104
     i32.const 12528
     i32.const 146
     i32.const 13
     call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
     unreachable
    end
    local.get $3
    i32.load offset=12
    local.get $5
    i32.add
    local.get $3
    i32.load offset=52
    i32.rem_u
    local.set $4
    local.get $3
    call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#getSlotCapacity@override
    block $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#ensureSlot|inlined.2
     local.get $4
     local.get $3
     i32.load offset=28
     i32.eq
     if
      local.get $3
      i32.load offset=32
      local.tee $1
      i32.eqz
      br_if $folding-inner0
      br $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#ensureSlot|inlined.2
     end
     local.get $3
     i32.load offset=20
     local.get $4
     call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#has"
     if
      local.get $3
      i32.load offset=20
      local.get $4
      call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#get"
      local.set $1
     else
      local.get $3
      local.get $4
      i64.extend_i32_u
      call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#calculateStoragePointer@override
      local.set $1
      global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
      local.get $1
      call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
      local.set $1
      local.get $3
      i32.load offset=20
      local.get $4
      local.get $1
      call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#set"
     end
     local.get $3
     local.get $4
     i32.store offset=28
     local.get $3
     local.get $1
     i32.store offset=32
    end
    local.get $3
    local.get $3
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#unpackSlot@override
    local.tee $1
    i32.const 0
    call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
    local.get $6
    call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#eq@override
    i32.eqz
    if
     local.get $1
     i32.const 0
     local.get $6
     call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
     local.get $3
     local.get $1
     call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#packSlot@override
     local.set $1
     local.get $3
     i32.load offset=20
     local.get $4
     local.get $1
     call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#set"
     local.get $3
     i32.load offset=24
     local.get $4
     call $~lib/set/Set<u32>#add
     local.get $3
     local.get $4
     i32.store offset=28
     local.get $3
     local.get $1
     i32.store offset=32
    end
    local.get $0
    i32.load offset=96
    local.get $6
    block $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU32|inlined.6 (result i32)
     local.get $5
     i32.eqz
     if
      i64.const 0
      i64.const 0
      i64.const 0
      i64.const 0
      call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
      br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU32|inlined.6
     end
     local.get $5
     i32.const 1
     i32.eq
     if
      i64.const 1
      i64.const 0
      i64.const 0
      i64.const 0
      call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
      br $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.fromU32|inlined.6
     end
     local.get $5
     i64.extend_i32_u
     i64.const 0
     i64.const 0
     i64.const 0
     call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    end
    call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#set
   end
   local.get $3
   i32.load offset=8
   i32.eqz
   if
    i32.const 15216
    i32.const 12528
    i32.const 349
    i32.const 13
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $3
   i32.load offset=12
   local.get $3
   i32.load offset=8
   i32.const 1
   i32.sub
   i32.add
   local.get $3
   i32.load offset=52
   i32.rem_u
   local.set $4
   local.get $3
   call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#getSlotCapacity@override
   block $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#ensureSlot|inlined.3
    local.get $4
    local.get $3
    i32.load offset=28
    i32.eq
    if
     local.get $3
     i32.load offset=32
     local.tee $1
     i32.eqz
     br_if $folding-inner0
     br $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#ensureSlot|inlined.3
    end
    local.get $3
    i32.load offset=20
    local.get $4
    call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#has"
    if
     local.get $3
     i32.load offset=20
     local.get $4
     call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#get"
     local.set $1
    else
     local.get $3
     local.get $4
     i64.extend_i32_u
     call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#calculateStoragePointer@override
     local.set $1
     global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
     local.get $1
     call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
     local.set $1
     local.get $3
     i32.load offset=20
     local.get $4
     local.get $1
     call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#set"
    end
    local.get $3
    local.get $4
    i32.store offset=28
    local.get $3
    local.get $1
    i32.store offset=32
   end
   local.get $3
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#unpackSlot@override
   local.set $1
   block $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#zeroValue@override$1110
    local.get $3
    i32.const 8
    i32.sub
    i32.load
    i32.const 51
    i32.eq
    if
     i64.const 0
     i64.const 0
     i64.const 0
     i64.const 0
     call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
     local.set $5
     br $__inlined_func$~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#zeroValue@override$1110
    end
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 0
   call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
   local.get $5
   call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#eq@override
   i32.eqz
   if
    local.get $1
    i32.const 0
    local.get $5
    call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
    local.get $3
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#packSlot@override
    local.set $1
    local.get $3
    i32.load offset=20
    local.get $4
    local.get $1
    call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#set"
    local.get $3
    i32.load offset=24
    local.get $4
    call $~lib/set/Set<u32>#add
    local.get $3
    local.get $4
    i32.store offset=28
    local.get $3
    local.get $1
    i32.store offset=32
   end
   local.get $3
   local.get $3
   i32.load offset=8
   i32.const 1
   i32.sub
   i32.store offset=8
   local.get $3
   i32.const 1
   i32.store8 offset=16
   local.get $0
   i32.load offset=96
   local.get $2
   call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#delete
   local.get $3
   call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#save
   return
  end
  i32.const 8064
  i32.const 12528
  i32.const 527
  i32.const 32
  call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.sub (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
  if
   i32.const 15328
   i32.const 7104
   i32.const 125
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i64.load
  local.tee $3
  local.get $1
  i64.load
  i64.sub
  local.set $2
  local.get $2
  local.get $3
  i64.gt_u
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  local.get $0
  i64.load offset=8
  local.tee $3
  local.get $1
  i64.load offset=8
  i64.sub
  local.tee $4
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  i64.sub
  local.set $5
  local.get $4
  local.get $5
  i64.lt_u
  local.get $3
  local.get $4
  i64.lt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  local.get $0
  i64.load offset=16
  local.tee $3
  local.get $1
  i64.load offset=16
  i64.sub
  local.tee $4
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  i64.sub
  local.set $6
  local.get $4
  local.get $6
  i64.lt_u
  local.get $3
  local.get $4
  i64.lt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  local.get $0
  i64.load offset=24
  local.tee $4
  local.get $1
  i64.load offset=24
  i64.sub
  local.tee $3
  global.get $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  i64.sub
  local.set $7
  local.get $3
  local.get $7
  i64.lt_u
  local.get $3
  local.get $4
  i64.gt_u
  i32.add
  i64.extend_i32_s
  global.set $~lib/@btc-vision/as-bignum/assembly/globals/__u256carrySub
  local.get $2
  local.get $5
  local.get $6
  local.get $7
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_transfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  if
   return
  end
  local.get $0
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_ownerOf
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  i32.eqz
  if
   i32.const 14528
   i32.const 11744
   i32.const 680
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address.zero
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  if
   i32.const 14608
   i32.const 11744
   i32.const 684
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $4
  i32.load offset=24
  i32.eqz
  if
   i32.const 10624
   i32.const 5232
   i32.const 145
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $4
  i32.load offset=24
  local.tee $4
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 147
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $4
  i32.load offset=4
  local.tee $4
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  if (result i32)
   i32.const 1
  else
   local.get $0
   local.get $1
   local.get $4
   call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_isApprovedForAll
  end
  i32.eqz
  if
   local.get $0
   i32.load offset=68
   local.get $3
   call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
   call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_addressFromU256
   local.get $4
   call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
   i32.eqz
   if
    i32.const 14896
    i32.const 11744
    i32.const 692
    i32.const 17
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
  end
  local.get $0
  i32.load offset=68
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#delete
  local.get $0
  local.get $1
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_removeTokenFromOwnerEnumeration
  local.get $0
  local.get $2
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_addTokenToOwnerEnumeration
  local.get $0
  i32.load offset=72
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#get
  local.set $4
  local.get $0
  i32.load offset=72
  local.get $1
  local.get $4
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.sub
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#set
  local.get $0
  i32.load offset=72
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#get
  local.set $4
  local.get $0
  i32.load offset=72
  local.get $2
  local.get $4
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#set
  local.get $0
  i32.load offset=64
  local.get $3
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_u256FromAddress
  call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#set
  local.get $1
  local.get $2
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#createTransferEvent
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytesWithLength (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.load offset=8
  local.tee $3
  i32.const 4
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  local.get $0
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU32
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_u
   if
    local.get $0
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_checkOnOP721Received (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $3
  i32.load offset=8
  i32.const 104
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $4
  i32.const 1397356254
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU32
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $5
  i32.load offset=24
  i32.eqz
  if
   i32.const 10624
   i32.const 5232
   i32.const 145
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $5
  i32.load offset=24
  local.tee $5
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 147
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $4
  local.get $5
  i32.load offset=4
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $4
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $4
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $4
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytesWithLength
  local.get $1
  i32.eqz
  if
   i32.const 15424
   i32.const 5232
   i32.const 400
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  i32.load
  local.get $4
  i32.load offset=8
  i32.load
  local.get $4
  i32.load offset=4
  i32.load offset=8
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/FOUR_BYTES_UINT8ARRAY_MEMORY_CACHE
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/callContract
  local.set $0
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/FOUR_BYTES_UINT8ARRAY_MEMORY_CACHE
  i32.load offset=4
  i32.load
  call $~lib/polyfills/bswap<u32>
  local.tee $1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getCallResult
  local.get $0
  if
   local.get $0
   local.get $2
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/env/global/env_exit
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#constructor
  local.set $1
  i32.const 8
  i32.const 65
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i32.eqz
  i32.store8
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  i32.load offset=4
  i32.load
  i32.load offset=8
  i32.const 4
  i32.lt_s
  if
   i32.const 15520
   i32.const 11744
   i32.const 824
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  i32.load offset=4
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32
  i32.const 1397356254
  i32.ne
  if
   i32.const 15520
   i32.const 11744
   i32.const 829
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_safeTransfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_transfer
  local.get $2
  i32.load
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/getAccountType
  if
   local.get $1
   local.get $2
   local.get $3
   local.get $4
   call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_checkOnOP721Received
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_approve (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address.zero
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  if
   i32.const 15600
   i32.const 11744
   i32.const 728
   i32.const 42
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  local.get $0
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_ownerOf
  local.tee $3
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  if
   i32.const 15680
   i32.const 11744
   i32.const 731
   i32.const 33
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
    local.tee $4
    i32.load offset=24
    i32.eqz
    br_if $folding-inner0
    local.get $4
    i32.load offset=24
    local.tee $4
    i32.eqz
    br_if $folding-inner1
    local.get $3
    local.get $4
    i32.load offset=4
    call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
    if (result i32)
     i32.const 1
    else
     global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
     local.tee $4
     i32.load offset=24
     i32.eqz
     br_if $folding-inner0
     local.get $4
     i32.load offset=24
     local.tee $4
     i32.eqz
     br_if $folding-inner1
     local.get $0
     local.get $3
     local.get $4
     i32.load offset=4
     call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_isApprovedForAll
    end
    i32.eqz
    if
     i32.const 15760
     i32.const 11744
     i32.const 737
     i32.const 13
     call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
     unreachable
    end
    local.get $0
    i32.load offset=68
    local.get $2
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_u256FromAddress
    call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#set
    i32.const 12
    i32.const 66
    call $~lib/rt/stub/__new
    i32.const 96
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
    local.tee $4
    local.get $3
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
    local.get $4
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
    local.get $4
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
    i32.const 15840
    local.get $4
    call $~lib/@btc-vision/btc-runtime/runtime/events/NetEvent/NetEvent#constructor
    call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#emitEvent
    return
   end
   i32.const 10624
   i32.const 5232
   i32.const 145
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 8064
  i32.const 5232
  i32.const 147
  i32.const 16
  call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_setApprovalForAll (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i32.load offset=76
  local.tee $4
  local.get $1
  call $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#indexOf@override"
  i32.const -1
  i32.eq
  if
   local.get $4
   local.get $1
   local.get $1
   local.get $4
   i32.load16_u offset=12
   call $~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#constructor
   call $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#set"
   drop
  end
  local.get $4
  local.get $1
  call $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#get"
  local.set $4
  local.get $3
  if (result i32)
   i64.const 1
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  else
   i64.const 0
   i64.const 0
   i64.const 0
   i64.const 0
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  end
  local.set $8
  local.get $4
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#getKeyHash
  local.set $5
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $7
  i32.load offset=4
  local.tee $9
  local.get $8
  i64.load offset=24
  call $~lib/polyfills/bswap<u64>
  i64.store
  local.get $9
  local.get $8
  i64.load offset=16
  call $~lib/polyfills/bswap<u64>
  i64.store offset=8
  local.get $9
  local.get $8
  i64.load offset=8
  call $~lib/polyfills/bswap<u64>
  i64.store offset=16
  local.get $9
  local.get $8
  i64.load
  call $~lib/polyfills/bswap<u64>
  i64.store offset=24
  local.get $5
  local.get $7
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#_internalSetStorageAt
  local.get $0
  i32.load offset=76
  local.tee $0
  local.get $1
  call $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#indexOf@override"
  i32.const -1
  i32.eq
  if
   local.get $0
   local.get $1
   local.get $1
   local.get $0
   i32.load16_u offset=12
   call $~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#constructor
   call $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#set"
   drop
  end
  local.get $0
  local.get $1
  local.get $4
  call $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#set"
  i32.const 8
  i32.sub
  i32.load
  i32.const 44
  i32.ne
  if
   i32.const 15952
   i32.const 16016
   i32.const 26
   i32.const 22
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 12
  i32.const 67
  call $~lib/rt/stub/__new
  i32.const 65
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $4
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $4
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $4
  local.get $3
  i32.eqz
  i32.eqz
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
  i32.const 16160
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/events/NetEvent/NetEvent#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#emitEvent
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytesU8Array (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.load offset=12
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  loop $for-loop|0
   local.get $2
   local.get $1
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $1
    i32.load offset=12
    i32.ge_u
    if
     i32.const 2176
     i32.const 4032
     i32.const 114
     i32.const 42
     call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
     unreachable
    end
    local.get $0
    local.get $1
    i32.load offset=4
    local.get $2
    i32.add
    i32.load8_u
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU64 (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 8
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  local.get $0
  i32.load
  local.tee $2
  i32.const 31
  i32.shr_u
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.load offset=8
  local.get $2
  i32.const 8
  i32.add
  i32.lt_s
  i32.or
  if
   i32.const 2176
   i32.const 2416
   i32.const 174
   i32.const 7
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  local.get $3
  i32.load offset=4
  i32.add
  local.get $1
  call $~lib/polyfills/bswap<u64>
  i64.store
  local.get $0
  local.get $0
  i32.load
  i32.const 8
  i32.add
  i32.store
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_buildDomainSeparator (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 192
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $1
  i32.const 4656
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytesU8Array
  local.get $0
  i32.load offset=16
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
  i32.const 1
  global.set $~argumentsLength
  call $~lib/string/String.UTF8.encode@varargs
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  local.get $0
  call $~lib/typedarray/Uint8Array.wrap@varargs
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
  local.get $1
  i32.const 4768
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytesU8Array
  local.get $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:chainId
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $0
  i32.load offset=48
  i32.eqz
  if
   i32.const 16416
   i32.const 5232
   i32.const 264
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=48
  local.tee $0
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 266
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $0
  i32.load offset=40
  i32.eqz
  if
   i32.const 16496
   i32.const 5232
   i32.const 231
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=40
  local.tee $0
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 233
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $1
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#verifySignature (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  i32.load offset=24
  i32.eqz
  if
   i32.const 10624
   i32.const 5232
   i32.const 145
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=24
  local.tee $0
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 147
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load
  i64.load
  i64.const 1
  i64.and
  i32.wrap_i64
  if (result i32)
   local.get $2
   i32.load offset=8
   i32.const 64
   i32.ne
   if
    i32.const 16576
    i32.const 5232
    i32.const 1117
    i32.const 38
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $3
   i32.load offset=8
   i32.const 32
   i32.ne
   if
    i32.const 16656
    i32.const 5232
    i32.const 1118
    i32.const 33
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   i32.const 0
   i32.const 33
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $0
   i32.load offset=4
   local.tee $4
   i32.const 0
   i32.store8
   local.get $4
   i32.const 1
   i32.add
   local.get $1
   i32.load offset=20
   i32.load offset=4
   i32.const 32
   memory.copy
   local.get $0
   i32.load
   local.get $2
   i32.load
   local.get $3
   i32.load
   call $~lib/@btc-vision/btc-runtime/runtime/env/global/verifySignature
   i32.const 1
   i32.eq
  else
   local.get $1
   i32.load offset=16
   i32.eqz
   if
    i32.const 0
    i32.const 33
    call $~lib/typedarray/Uint8Array#constructor
    local.tee $0
    i32.load offset=4
    local.tee $4
    i32.const 0
    i32.store8
    local.get $4
    i32.const 1
    i32.add
    local.get $1
    i32.load offset=4
    i32.const 32
    memory.copy
    i32.const 0
    i32.const 1313
    call $~lib/typedarray/Uint8Array#constructor
    local.set $4
    local.get $0
    i32.load
    local.get $4
    i32.load
    call $~lib/@btc-vision/btc-runtime/runtime/env/global/loadMLDSA
    local.get $4
    i32.load offset=4
    i32.load8_u
    i32.eqz
    if
     i32.const 16960
     i32.const 17040
     i32.const 376
     i32.const 9
     call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
     unreachable
    end
    i32.const 1
    global.set $~argumentsLength
    local.get $1
    local.get $4
    i32.const 1
    call $~lib/typedarray/Uint8Array#slice@varargs
    i32.store offset=16
   end
   local.get $1
   i32.load offset=16
   local.tee $0
   i32.eqz
   if
    i32.const 8064
    i32.const 2752
    i32.const 87
    i32.const 16
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $0
   i32.load offset=8
   i32.const 1312
   i32.ne
   if
    i32.const 17168
    i32.const 5232
    i32.const 867
    i32.const 13
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $2
   i32.load offset=8
   i32.const 2420
   i32.ne
   if
    i32.const 17264
    i32.const 5232
    i32.const 871
    i32.const 13
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $3
   i32.load offset=8
   i32.const 32
   i32.ne
   if
    i32.const 16656
    i32.const 5232
    i32.const 875
    i32.const 13
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   i32.const 0
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.add
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $1
   i32.load offset=4
   local.tee $4
   i32.const 1
   i32.store8
   local.get $4
   i32.const 0
   i32.store8 offset=1
   local.get $4
   i32.const 2
   i32.add
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=8
   memory.copy
   local.get $1
   i32.load
   local.get $2
   i32.load
   local.get $3
   i32.load
   call $~lib/@btc-vision/btc-runtime/runtime/env/global/verifySignature
   i32.const 1
   i32.eq
  end
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_verifySignature (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 66
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $5
  i32.const 2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#allocSafe
  local.get $5
  i32.load
  local.tee $6
  i32.const 31
  i32.shr_u
  local.get $5
  i32.load offset=4
  local.tee $7
  i32.load offset=8
  local.get $6
  i32.const 2
  i32.add
  i32.lt_s
  i32.or
  if
   i32.const 2176
   i32.const 2416
   i32.const 135
   i32.const 7
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $6
  local.get $7
  i32.load offset=4
  i32.add
  i32.const 281
  i32.store16
  local.get $5
  local.get $5
  i32.load
  i32.const 2
  i32.add
  i32.store
  local.get $5
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_buildDomainSeparator
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
  local.get $5
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
  local.get $5
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256
  local.set $1
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.get $2
  local.get $3
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#verifySignature
  i32.eqz
  if
   i32.const 17360
   i32.const 11744
   i32.const 907
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=80
  local.get $2
  local.get $4
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.add
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#set
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_verifyApproveSignature (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $5
  i32.load offset=8
  i32.const 64
  i32.ne
  if
   i32.const 16272
   i32.const 11744
   i32.const 841
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $6
  i32.load offset=20
  i32.eqz
  if
   i32.const 11088
   i32.const 5232
   i32.const 118
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $6
  i32.load offset=20
  local.tee $6
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 120
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $4
  local.get $6
  i64.load offset=8
  i64.lt_u
  if
   i32.const 16352
   i32.const 11744
   i32.const 844
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=80
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#get
  local.set $7
  i32.const 168
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $6
  i32.const 4880
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytesU8Array
  local.get $6
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $6
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $6
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $6
  local.get $7
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $6
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU64
  local.get $0
  local.get $6
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256
  local.get $1
  local.get $5
  local.get $7
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_verifySignature
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#approveBySignature (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.set $4
  loop $for-loop|0
   local.get $2
   i32.const 32
   i32.lt_s
   if
    local.get $4
    local.get $2
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.set $5
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   i32.const 32
   i32.lt_s
   if
    local.get $5
    local.get $2
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
  local.set $2
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
  local.set $4
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
  local.set $5
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
  local.set $3
  local.get $1
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $1
  local.get $0
  local.get $5
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_ownerOf
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  i32.eqz
  if
   i32.const 16208
   i32.const 11744
   i32.const 453
   i32.const 35
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  local.get $2
  local.get $4
  local.get $5
  local.get $3
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_verifyApproveSignature
  local.get $0
  local.get $4
  local.get $5
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_approve
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_verifySetApprovalForAllSignature (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $5
  i32.load offset=8
  i32.const 64
  i32.ne
  if
   i32.const 16272
   i32.const 11744
   i32.const 871
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $6
  i32.load offset=20
  i32.eqz
  if
   i32.const 11088
   i32.const 5232
   i32.const 118
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $6
  i32.load offset=20
  local.tee $6
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 120
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $4
  local.get $6
  i64.load offset=8
  i64.lt_u
  if
   i32.const 16352
   i32.const 11744
   i32.const 874
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=80
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#get
  local.set $7
  i32.const 137
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $6
  i32.const 4992
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytesU8Array
  local.get $6
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $6
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
  local.get $6
  local.get $3
  i32.eqz
  i32.eqz
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
  local.get $6
  local.get $7
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $6
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU64
  local.get $0
  local.get $6
  i32.load offset=8
  call $~lib/@btc-vision/btc-runtime/runtime/env/global/sha256
  local.get $1
  local.get $5
  local.get $7
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_verifySignature
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#setApprovalForAllBySignature (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.set $4
  loop $for-loop|0
   local.get $2
   i32.const 32
   i32.lt_s
   if
    local.get $4
    local.get $2
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 32
  call $~lib/array/Array<u8>#constructor
  local.set $5
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   i32.const 32
   i32.lt_s
   if
    local.get $5
    local.get $2
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/types/ExtendedAddress/ExtendedAddress#constructor
  local.set $2
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
  local.set $4
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
  i32.const 0
  i32.ne
  local.set $5
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU64
  local.set $3
  local.get $1
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
  local.set $1
  local.get $2
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
  if
   i32.const 15888
   i32.const 11744
   i32.const 482
   i32.const 33
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  local.get $2
  local.get $4
  local.get $5
  local.get $3
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_verifySetApprovalForAllSignature
  local.get $0
  local.get $2
  local.get $4
  local.get $5
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_setApprovalForAll
  i32.const 0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_burn (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_ownerOf
  local.set $2
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
    local.tee $3
    i32.load offset=24
    i32.eqz
    br_if $folding-inner0
    local.get $3
    i32.load offset=24
    local.tee $3
    i32.eqz
    br_if $folding-inner1
    local.get $2
    local.get $3
    i32.load offset=4
    call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
    if (result i32)
     i32.const 0
    else
     global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
     local.tee $3
     i32.load offset=24
     i32.eqz
     br_if $folding-inner0
     local.get $3
     i32.load offset=24
     local.tee $3
     i32.eqz
     br_if $folding-inner1
     local.get $0
     local.get $2
     local.get $3
     i32.load offset=4
     call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_isApprovedForAll
     i32.eqz
    end
    if
     local.get $0
     i32.load offset=68
     local.get $1
     call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
     call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_addressFromU256
     global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
     local.tee $4
     i32.load offset=24
     i32.eqz
     br_if $folding-inner0
     local.get $4
     i32.load offset=24
     local.tee $4
     i32.eqz
     br_if $folding-inner1
     local.get $4
     i32.load offset=4
     call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
     i32.eqz
     if
      i32.const 17424
      i32.const 11744
      i32.const 644
      i32.const 17
      call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
      unreachable
     end
    end
    local.get $0
    i32.load offset=68
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#delete
    local.get $0
    local.get $2
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_removeTokenFromOwnerEnumeration
    local.get $0
    i32.load offset=72
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#get
    local.set $3
    local.get $0
    i32.load offset=72
    local.get $2
    local.get $3
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.sub
    call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#set
    local.get $0
    i32.load offset=64
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#delete
    local.get $0
    i32.load offset=84
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
    local.tee $3
    i64.load offset=24
    local.get $3
    i64.load offset=16
    local.get $3
    i64.load
    local.get $3
    i64.load offset=8
    i64.or
    i64.or
    i64.or
    i64.eqz
    i32.eqz
    if
     local.get $0
     i32.load offset=84
     local.get $1
     call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#delete
    end
    local.get $0
    i32.load offset=44
    local.get $0
    i32.load offset=44
    call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
    i64.const 1
    i64.const 0
    i64.const 0
    i64.const 0
    call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
    call $~lib/@btc-vision/btc-runtime/runtime/types/SafeMath/SafeMath.sub
    call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
    local.get $2
    call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address.zero
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#createTransferEvent
    return
   end
   i32.const 10624
   i32.const 5232
   i32.const 145
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 8064
  i32.const 5232
  i32.const 147
  i32.const 16
  call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#tokenOfOwnerByIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
  local.set $2
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
  local.tee $1
  local.get $0
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_balanceOf
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256.lt
  i32.eqz
  if
   i32.const 17488
   i32.const 11744
   i32.const 517
   i32.const 31
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_getOwnerTokenArray
  local.set $0
  local.get $1
  i64.load
  i32.wrap_i64
  local.tee $1
  local.get $0
  i32.load offset=52
  i32.ge_u
  if
   i32.const 15040
   i32.const 12528
   i32.const 110
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.get $1
  i32.add
  local.get $0
  i32.load offset=52
  i32.rem_u
  local.set $2
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#getSlotCapacity@override
  block $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#ensureSlot|inlined.4
   local.get $2
   local.get $0
   i32.load offset=28
   i32.eq
   if
    local.get $0
    i32.load offset=32
    local.tee $1
    i32.eqz
    if
     i32.const 8064
     i32.const 12528
     i32.const 527
     i32.const 32
     call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
     unreachable
    end
    br $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#ensureSlot|inlined.4
   end
   local.get $0
   i32.load offset=20
   local.get $2
   call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#has"
   if
    local.get $0
    i32.load offset=20
    local.get $2
    call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#get"
    local.set $1
   else
    local.get $0
    local.get $2
    i64.extend_i32_u
    call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#calculateStoragePointer@override
    local.set $1
    global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#getStorageAt
    local.set $1
    local.get $0
    i32.load offset=20
    local.get $2
    local.get $1
    call $"~lib/map/Map<u32,~lib/typedarray/Uint8Array>#set"
   end
   local.get $0
   local.get $2
   i32.store offset=28
   local.get $0
   local.get $1
   i32.store offset=32
  end
  local.get $0
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#unpackSlot@override
  i32.const 0
  call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
  local.set $0
  i32.const 32
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $1
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $1
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#metadata (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $0
  i32.load offset=16
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
  local.set $1
  local.get $0
  i32.load offset=20
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
  local.set $2
  local.get $0
  i32.load offset=32
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
  local.set $3
  local.get $0
  i32.load offset=28
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
  local.set $4
  local.get $0
  i32.load offset=36
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
  local.set $5
  local.get $0
  i32.load offset=40
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
  local.set $6
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_buildDomainSeparator
  local.set $7
  local.get $1
  call $~lib/string/String.UTF8.byteLength
  local.set $12
  local.get $2
  call $~lib/string/String.UTF8.byteLength
  local.set $13
  local.get $3
  call $~lib/string/String.UTF8.byteLength
  local.set $8
  local.get $4
  call $~lib/string/String.UTF8.byteLength
  local.set $9
  local.get $5
  call $~lib/string/String.UTF8.byteLength
  local.set $10
  local.get $6
  call $~lib/string/String.UTF8.byteLength
  local.set $11
  local.get $7
  i32.load offset=8
  local.get $12
  local.get $13
  i32.add
  local.get $8
  i32.add
  local.get $9
  i32.add
  local.get $10
  i32.add
  local.get $11
  i32.add
  i32.const 92
  i32.add
  i32.add
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
  local.tee $8
  local.get $1
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
  local.get $8
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
  local.get $8
  local.get $3
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
  local.get $8
  local.get $4
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
  local.get $8
  local.get $5
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
  local.get $8
  local.get $6
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
  local.get $8
  local.get $0
  i32.load offset=44
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $8
  local.get $0
  i32.load offset=48
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
  local.get $8
  local.get $7
  call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytesWithLength
  local.get $8
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#execute (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $folding-inner7
   block $folding-inner6
    block $folding-inner5
     block $folding-inner4
      local.get $1
      i32.const 360839196
      i32.eq
      if
       local.get $0
       i32.load offset=16
       call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
       local.tee $0
       call $~lib/string/String.UTF8.byteLength
       i32.const 4
       i32.add
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
       local.tee $1
       local.get $0
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
       br $folding-inner4
      end
      local.get $1
      i32.const 630619301
      i32.eq
      if
       local.get $0
       i32.load offset=20
       call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
       local.tee $0
       call $~lib/string/String.UTF8.byteLength
       i32.const 4
       i32.add
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
       local.tee $1
       local.get $0
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
       br $folding-inner4
      end
      local.get $1
      i32.const -2070859664
      i32.eq
      if
       i32.const 32
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
       local.tee $1
       local.get $0
       i32.load offset=48
       call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
       br $folding-inner4
      end
      local.get $1
      i32.const 2073094983
      i32.eq
      if
       local.get $0
       i32.load offset=32
       call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
       call $~lib/string/String.UTF8.byteLength
       local.get $0
       i32.load offset=36
       call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
       call $~lib/string/String.UTF8.byteLength
       i32.add
       local.get $0
       i32.load offset=40
       call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
       call $~lib/string/String.UTF8.byteLength
       i32.add
       local.get $0
       i32.load offset=28
       call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
       call $~lib/string/String.UTF8.byteLength
       i32.add
       i32.const 16
       i32.add
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
       local.tee $1
       local.get $0
       i32.load offset=32
       call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
       local.get $1
       local.get $0
       i32.load offset=28
       call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
       local.get $1
       local.get $0
       i32.load offset=36
       call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
       local.get $1
       local.get $0
       i32.load offset=40
       call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#get:value
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeStringWithLength
       br $folding-inner4
      end
      local.get $1
      i32.const -1345001860
      i32.eq
      if
       local.get $0
       local.get $2
       call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#tokenURI
       return
      end
      local.get $1
      i32.const 1260247291
      i32.eq
      if
       local.get $0
       local.get $2
       call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#changeMetadata
       return
      end
      local.get $1
      i32.const -1553464786
      i32.eq
      if
       i32.const 32
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
       local.tee $1
       local.get $0
       i32.load offset=44
       call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
       br $folding-inner4
      end
      block $folding-inner3
       block $folding-inner2
        local.get $1
        i32.const 1531377910
        i32.eq
        if
         local.get $0
         local.get $2
         call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
         call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_balanceOf
         local.set $0
         br $folding-inner2
        end
        local.get $1
        i32.const 116840091
        i32.eq
        if
         local.get $0
         local.get $2
         call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
         call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_ownerOf
         local.set $0
         br $folding-inner3
        end
        block $folding-inner1
         local.get $1
         i32.const 998829911
         i32.eq
         if
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
          local.set $1
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
          local.set $2
          global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
          local.tee $3
          i32.load offset=24
          i32.eqz
          br_if $folding-inner6
          local.get $3
          i32.load offset=24
          local.tee $3
          i32.eqz
          br_if $folding-inner1
          local.get $0
          local.get $3
          i32.load offset=4
          local.get $1
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_transfer
          br $folding-inner5
         end
         local.get $1
         i32.const 1265010151
         i32.eq
         if
          local.get $0
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_transfer
          br $folding-inner5
         end
         local.get $1
         i32.const -160920984
         i32.eq
         if
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
          local.set $1
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
          local.set $3
          local.get $2
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32
          i32.const 0
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
          local.set $2
          global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
          local.tee $4
          i32.load offset=24
          i32.eqz
          br_if $folding-inner6
          local.get $4
          i32.load offset=24
          local.tee $4
          i32.eqz
          br_if $folding-inner1
          local.get $0
          local.get $4
          i32.load offset=4
          local.get $1
          local.get $3
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_safeTransfer
          br $folding-inner5
         end
         local.get $1
         i32.const 1769024148
         i32.eq
         if
          local.get $0
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
          local.get $2
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU32
          i32.const 0
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readBytes
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_safeTransfer
          br $folding-inner5
         end
         local.get $1
         i32.const -1626621783
         i32.eq
         if
          local.get $0
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_approve
          br $folding-inner5
         end
         local.get $1
         i32.const -305824359
         i32.eq
         if
          local.get $0
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
          local.tee $1
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_exists
          i32.eqz
          if
           i32.const 13136
           i32.const 11744
           i32.const 392
           i32.const 37
           call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
           unreachable
          end
          local.get $0
          i32.load offset=68
          local.get $1
          call $~lib/@btc-vision/btc-runtime/runtime/storage/maps/StoredMapU256/StoredMapU256#get
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_addressFromU256
          local.set $0
          br $folding-inner3
         end
         local.get $1
         i32.const -645942080
         i32.eq
         if
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
          local.set $1
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU8
          i32.const 0
          i32.ne
          local.set $2
          global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
          local.tee $3
          i32.load offset=24
          i32.eqz
          br_if $folding-inner6
          local.get $3
          i32.load offset=24
          local.tee $3
          i32.eqz
          br_if $folding-inner7
          local.get $1
          local.get $3
          i32.load offset=4
          call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
          if
           i32.const 15888
           i32.const 11744
           i32.const 409
           i32.const 48
           call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
           unreachable
          end
          global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
          local.tee $3
          i32.load offset=24
          i32.eqz
          br_if $folding-inner6
          local.get $3
          i32.load offset=24
          local.tee $3
          i32.eqz
          br_if $folding-inner7
          local.get $0
          local.get $3
          i32.load offset=4
          local.get $1
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_setApprovalForAll
          i32.const 0
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
          return
         end
         local.get $1
         i32.const 1742348210
         i32.eq
         if
          local.get $0
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_isApprovedForAll
          local.set $0
          i32.const 1
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
          local.tee $1
          local.get $0
          i32.eqz
          i32.eqz
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU8
          br $folding-inner4
         end
         local.get $1
         i32.const 1167857804
         i32.eq
         if
          local.get $0
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#approveBySignature
          return
         end
         local.get $1
         i32.const 2096227139
         i32.eq
         if
          local.get $0
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#setApprovalForAllBySignature
          return
         end
         local.get $1
         i32.const 814599775
         i32.eq
         if
          local.get $0
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readU256
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_burn
          br $folding-inner5
         end
         local.get $1
         i32.const -239107872
         i32.eq
         if
          i32.const 32
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
          local.tee $1
          local.get $0
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#_buildDomainSeparator
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeBytes
          br $folding-inner4
         end
         local.get $1
         i32.const 1218394464
         i32.eq
         if
          local.get $0
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#tokenOfOwnerByIndex
          return
         end
         local.get $1
         i32.const -1476094934
         i32.eq
         if
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readAddress
          local.set $1
          local.get $0
          i32.load offset=80
          local.get $1
          call $~lib/@btc-vision/btc-runtime/runtime/memory/AddressMemoryMap/AddressMemoryMap#get
          local.set $0
          br $folding-inner2
         end
         local.get $1
         i32.const -706301647
         i32.eq
         if
          global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
          local.tee $1
          i32.load offset=24
          i32.eqz
          br_if $folding-inner6
          local.get $1
          i32.load offset=24
          local.tee $1
          i32.eqz
          br_if $folding-inner7
          local.get $1
          i32.load offset=4
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onlyDeployer
          local.get $2
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesReader/BytesReader#readStringWithLength
          local.tee $1
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.eqz
          if
           i32.const 17552
           i32.const 11744
           i32.const 544
           i32.const 34
           call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
           unreachable
          end
          local.get $1
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.const 200
          i32.gt_u
          if
           i32.const 17632
           i32.const 11744
           i32.const 546
           i32.const 13
           call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
           unreachable
          end
          local.get $0
          i32.load offset=24
          local.tee $0
          local.get $1
          i32.store offset=12
          local.get $0
          call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
          i32.const 0
          call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
          return
         end
         local.get $1
         i32.const -66252452
         i32.eq
         if
          local.get $0
          call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#metadata
          return
         end
         local.get $0
         local.get $1
         local.get $2
         call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#execute
         return
        end
        br $folding-inner7
       end
       i32.const 32
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
       local.tee $1
       local.get $0
       call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeU256
       br $folding-inner4
      end
      i32.const 32
      call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
      local.tee $1
      local.get $0
      call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#writeAddress
     end
     local.get $1
     return
    end
    i32.const 0
    call $~lib/@btc-vision/btc-runtime/runtime/buffer/BytesWriter/BytesWriter#constructor
    return
   end
   i32.const 10624
   i32.const 5232
   i32.const 145
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 8064
  i32.const 5232
  i32.const 147
  i32.const 16
  call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/OP721/OP721#instantiate (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=56
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#get:value
  local.tee $2
  i64.load offset=24
  local.get $2
  i64.load offset=16
  local.get $2
  i64.load
  local.get $2
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  i32.eqz
  if
   i32.const 17824
   i32.const 11744
   i32.const 163
   i32.const 48
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $2
  i32.load offset=24
  i32.eqz
  if
   i32.const 10624
   i32.const 5232
   i32.const 145
   i32.const 13
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  i32.load offset=24
  local.tee $2
  i32.eqz
  if
   i32.const 8064
   i32.const 5232
   i32.const 147
   i32.const 16
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $2
  i32.load offset=4
  call $~lib/@btc-vision/btc-runtime/runtime/contracts/OP_NET/OP_NET#onlyDeployer
  local.get $1
  i32.load
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.eqz
  if
   i32.const 17888
   i32.const 11744
   i32.const 166
   i32.const 38
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  i32.load offset=4
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.eqz
  if
   i32.const 17952
   i32.const 11744
   i32.const 167
   i32.const 40
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $1
  i32.load offset=12
  local.tee $2
  i64.load offset=24
  local.get $2
  i64.load offset=16
  local.get $2
  i64.load
  local.get $2
  i64.load offset=8
  i64.or
  i64.or
  i64.or
  i64.eqz
  if
   i32.const 18016
   i32.const 11744
   i32.const 168
   i32.const 40
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  local.get $0
  i32.load offset=16
  local.tee $2
  local.get $1
  i32.load
  i32.store offset=12
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
  local.get $0
  i32.load offset=20
  local.tee $2
  local.get $1
  i32.load offset=4
  i32.store offset=12
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
  local.get $0
  i32.load offset=24
  local.tee $2
  local.get $1
  i32.load offset=8
  i32.store offset=12
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
  local.get $0
  i32.load offset=48
  local.get $1
  i32.load offset=12
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  local.get $0
  i32.load offset=52
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  local.get $0
  i32.load offset=56
  i64.const 1
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  local.get $0
  i32.load offset=60
  i64.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
  call $~lib/@btc-vision/btc-runtime/runtime/storage/StoredU256/StoredU256#set:value
  local.get $0
  i32.load offset=28
  local.tee $2
  local.get $1
  i32.load offset=16
  i32.store offset=12
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
  local.get $0
  i32.load offset=32
  local.tee $2
  local.get $1
  i32.load offset=20
  i32.store offset=12
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
  local.get $0
  i32.load offset=36
  local.tee $2
  local.get $1
  i32.load offset=28
  i32.store offset=12
  local.get $2
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
  local.get $0
  i32.load offset=40
  local.tee $0
  local.get $1
  i32.load offset=24
  i32.store offset=12
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#save
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredU256Array/StoredU256Array#calculateStoragePointer (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.tee $4
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 12080
   i32.const 8768
   i32.const 163
   i32.const 9
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.set $5
  loop $for-loop|0
   local.get $2
   i32.const 8
   i32.lt_s
   if
    local.get $5
    i32.const 31
    local.get $2
    i32.sub
    local.get $1
    i64.const 255
    i64.and
    i32.wrap_i64
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i64.const 8
    i64.shr_u
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  i32.load offset=8
  i32.const 32
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $5
   i32.load offset=8
   i32.const 32
   i32.ne
  end
  if
   i32.const 12176
   i32.const 8768
   i32.const 48
   i32.const 9
   call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
   unreachable
  end
  i32.const 0
  i32.const 32
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  i32.const 31
  local.set $2
  loop $for-loop|1
   local.get $2
   i32.const 0
   i32.ge_s
   if
    local.get $0
    local.get $2
    local.get $4
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    local.get $5
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.add
    local.get $3
    i32.add
    local.tee $3
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $3
    i32.const 8
    i32.shr_u
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $for-loop|1
   end
  end
  local.get $0
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/contracts/ReentrancyGuard/ReentrancyGuard#isSelectorExcluded@override (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  drop
  local.get $1
  i32.const 1397356254
  i32.eq
  local.get $1
  i32.const -666993220
  i32.eq
  i32.or
  local.get $1
  i32.const -824401953
  i32.eq
  i32.or
  local.get $1
  i32.const 1570067551
  i32.eq
  i32.or
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#getSlotCapacity@override (param $0 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 51
  i32.eq
  if
   return
  end
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#calculateStoragePointer@override (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 51
  i32.eq
  if
   local.get $0
   local.get $1
   call $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredU256Array/StoredU256Array#calculateStoragePointer
   return
  end
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#unpackSlot@override (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 51
  i32.eq
  if
   local.get $1
   i32.load offset=8
   i32.const 32
   i32.ne
   if
    i32.const 2304
    i32.const 5728
    i32.const 220
    i32.const 30
    call $~lib/@btc-vision/btc-runtime/runtime/abort/abort/revertOnError
    unreachable
   end
   local.get $1
   i32.load offset=4
   local.tee $0
   i64.load offset=24
   call $~lib/polyfills/bswap<u64>
   local.get $0
   i64.load offset=16
   call $~lib/polyfills/bswap<u64>
   local.get $0
   i64.load offset=8
   call $~lib/polyfills/bswap<u64>
   local.get $0
   i64.load
   call $~lib/polyfills/bswap<u64>
   call $~lib/@btc-vision/as-bignum/assembly/integer/u256/u256#constructor
   local.set $0
   i32.const 1
   i32.const 2
   i32.const 61
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.const 0
   local.get $0
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
   local.get $1
   return
  end
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#eq@override (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 51
  i32.eq
  if
   local.get $1
   i64.load
   local.get $2
   i64.load
   i64.eq
   if (result i32)
    local.get $1
    i64.load offset=8
    local.get $2
    i64.load offset=8
    i64.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i64.load offset=16
    local.get $2
    i64.load offset=16
    i64.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i64.load offset=24
    local.get $2
    i64.load offset=24
    i64.eq
   else
    i32.const 0
   end
   return
  end
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/arrays/StoredPackedArray/StoredPackedArray<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>#packSlot@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 51
  i32.eq
  if
   local.get $1
   i32.const 0
   call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
   local.set $1
   i32.const 0
   i32.const 32
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $2
   i32.load offset=4
   local.tee $0
   local.get $1
   i64.load offset=24
   call $~lib/polyfills/bswap<u64>
   i64.store
   local.get $0
   local.get $1
   i64.load offset=16
   call $~lib/polyfills/bswap<u64>
   i64.store offset=8
   local.get $0
   local.get $1
   i64.load offset=8
   call $~lib/polyfills/bswap<u64>
   i64.store offset=16
   local.get $0
   local.get $1
   i64.load
   call $~lib/polyfills/bswap<u64>
   i64.store offset=24
   local.get $2
   return
  end
  unreachable
 )
 (func $~lib/@btc-vision/btc-runtime/runtime/storage/BaseStoredString/BaseStoredString#getClassName@override (param $0 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 40
  i32.eq
  if
   return
  end
  unreachable
 )
 (func $"~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#indexOf@override" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  drop
  local.get $0
  i32.load
  i32.load offset=12
  local.set $2
  block $"__inlined_func$~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#indexOf$254"
   local.get $0
   i32.load offset=8
   i32.const -1
   i32.ne
   if (result i32)
    local.get $0
    i32.load offset=8
    local.get $2
    i32.lt_s
   else
    i32.const 0
   end
   if
    local.get $0
    i32.load
    local.get $0
    i32.load offset=8
    call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
    local.get $1
    call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
    if
     local.get $0
     i32.load offset=8
     local.set $2
     br $"__inlined_func$~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#indexOf$254"
    end
   end
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   loop $for-loop|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $0
     i32.load
     local.get $2
     call $~lib/array/Array<~lib/@btc-vision/btc-runtime/runtime/plugins/Plugin/Plugin>#__get
     local.get $1
     call $~lib/@btc-vision/btc-runtime/runtime/types/Address/Address#equals
     if
      local.get $0
      local.get $2
      i32.store offset=8
      br $"__inlined_func$~lib/@btc-vision/btc-runtime/runtime/generic/Map/Map<~lib/@btc-vision/btc-runtime/runtime/types/Address/Address,~lib/@btc-vision/btc-runtime/runtime/memory/Nested/Nested<~lib/@btc-vision/as-bignum/assembly/integer/u256/u256>>#indexOf$254"
     end
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $for-loop|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~start
  (local $0 i32)
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:~lib/@btc-vision/btc-runtime/runtime/index
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $src/contract/OrdinalsVault/burnAddressPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $src/contract/OrdinalsVault/verifiedBurnsPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $src/contract/OrdinalsVault/burnBlockHeightsPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#get:nextPointer
  i32.const 65535
  i32.and
  global.set $src/contract/OrdinalsVault/mintedInscriptionsPointer
  global.get $~lib/@btc-vision/btc-runtime/runtime/env/index/Blockchain
  local.tee $0
  i32.const 7296
  i32.store offset=28
  local.get $0
  call $~lib/@btc-vision/btc-runtime/runtime/env/BlockchainEnvironment/BlockchainEnvironment#createContractIfNotExists
 )
)
