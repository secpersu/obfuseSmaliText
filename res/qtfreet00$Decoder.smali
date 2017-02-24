.class Lcom/qtfreet00$Decoder;
.super Lcom/qtfreet00$Coder;
.source "qtfreet00.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qtfreet00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 125
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qtfreet00$Decoder;->DECODE:[I

    .line 128
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/qtfreet00$Decoder;->DECODE_WEBSAFE:[I

    return-void

    .line 125
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 128
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>(I[B)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .prologue
    const/4 v1, 0x0

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qtfreet00$Coder;-><init>(Lcom/qtfreet00$1;)V

    .line 142
    iput-object p2, p0, Lcom/qtfreet00$Decoder;->output:[B

    .line 144
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    sget-object v0, Lcom/qtfreet00$Decoder;->DECODE:[I

    :goto_0
    iput-object v0, p0, Lcom/qtfreet00$Decoder;->alphabet:[I

    .line 145
    iput v1, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 146
    iput v1, p0, Lcom/qtfreet00$Decoder;->value:I

    .line 147
    return-void

    .line 144
    :cond_0
    sget-object v0, Lcom/qtfreet00$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_0
.end method

.method synthetic constructor <init>(I[BLcom/qtfreet00$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lcom/qtfreet00$1;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/qtfreet00$Decoder;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 151
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 11
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .prologue
    .line 159
    iget v9, p0, Lcom/qtfreet00$Decoder;->state:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    .line 160
    const/4 v9, 0x0

    .line 286
    :goto_0
    return v9

    .line 162
    :cond_0
    move v5, p2

    .line 163
    .local v5, "p":I
    add-int/2addr p3, p2

    .line 165
    iget v7, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 166
    .local v7, "state":I
    iget v8, p0, Lcom/qtfreet00$Decoder;->value:I

    .line 167
    .local v8, "value":I
    const/4 v2, 0x0

    .line 168
    .local v2, "op":I
    iget-object v4, p0, Lcom/qtfreet00$Decoder;->output:[B

    .line 169
    .local v4, "output":[B
    iget-object v0, p0, Lcom/qtfreet00$Decoder;->alphabet:[I

    .line 171
    .local v0, "alphabet":[I
    :goto_1
    if-ge v5, p3, :cond_c

    .line 172
    if-nez v7, :cond_2

    .line 173
    :goto_2
    add-int/lit8 v9, v5, 0x4

    if-gt v9, p3, :cond_1

    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v9, v0, v9

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v10, v5, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    or-int v8, v9, v10

    if-ltz v8, :cond_1

    .line 174
    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    .line 175
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 176
    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 177
    add-int/lit8 v2, v2, 0x3

    .line 178
    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 180
    :cond_1
    if-lt v5, p3, :cond_2

    move v3, v2

    .line 257
    .end local v2    # "op":I
    .local v3, "op":I
    :goto_3
    if-nez p4, :cond_b

    .line 258
    iput v7, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 259
    iput v8, p0, Lcom/qtfreet00$Decoder;->value:I

    .line 260
    iput v3, p0, Lcom/qtfreet00$Decoder;->op:I

    .line 261
    const/4 v9, 0x1

    goto :goto_0

    .line 184
    .end local v3    # "op":I
    .restart local v2    # "op":I
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "p":I
    .local v6, "p":I
    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v1, v0, v9

    .line 186
    .local v1, "d":I
    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_4
    move v5, v6

    .line 255
    .end local v6    # "p":I
    .restart local v5    # "p":I
    goto :goto_1

    .line 188
    .end local v5    # "p":I
    .restart local v6    # "p":I
    :pswitch_0
    if-ltz v1, :cond_4

    .line 189
    move v8, v1

    .line 190
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 191
    :cond_4
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 192
    const/4 v9, 0x6

    iput v9, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 193
    const/4 v9, 0x0

    goto :goto_0

    .line 198
    :pswitch_1
    if-ltz v1, :cond_5

    .line 199
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 200
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 201
    :cond_5
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 202
    const/4 v9, 0x6

    iput v9, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 203
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 208
    :pswitch_2
    if-ltz v1, :cond_6

    .line 209
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 210
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 211
    :cond_6
    const/4 v9, -0x2

    if-ne v1, v9, :cond_7

    .line 212
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 213
    const/4 v7, 0x4

    move v2, v3

    .end local v3    # "op":I
    .restart local v2    # "op":I
    goto :goto_4

    .line 214
    :cond_7
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 215
    const/4 v9, 0x6

    iput v9, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 216
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 221
    :pswitch_3
    if-ltz v1, :cond_8

    .line 222
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 223
    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    .line 224
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 225
    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 226
    add-int/lit8 v2, v2, 0x3

    .line 227
    const/4 v7, 0x0

    goto :goto_4

    .line 228
    :cond_8
    const/4 v9, -0x2

    if-ne v1, v9, :cond_9

    .line 229
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x2

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 230
    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 231
    add-int/lit8 v2, v2, 0x2

    .line 232
    const/4 v7, 0x5

    goto :goto_4

    .line 233
    :cond_9
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 234
    const/4 v9, 0x6

    iput v9, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 235
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 240
    :pswitch_4
    const/4 v9, -0x2

    if-ne v1, v9, :cond_a

    .line 241
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 242
    :cond_a
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 243
    const/4 v9, 0x6

    iput v9, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 244
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 249
    :pswitch_5
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 250
    const/4 v9, 0x6

    iput v9, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 251
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 264
    .end local v1    # "d":I
    .end local v2    # "op":I
    .end local v6    # "p":I
    .restart local v3    # "op":I
    .restart local v5    # "p":I
    :cond_b
    packed-switch v7, :pswitch_data_1

    move v2, v3

    .line 284
    .end local v3    # "op":I
    .restart local v2    # "op":I
    :goto_5
    iput v7, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 285
    iput v2, p0, Lcom/qtfreet00$Decoder;->op:I

    .line 286
    const/4 v9, 0x1

    goto/16 :goto_0

    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_6
    move v2, v3

    .line 266
    .end local v3    # "op":I
    .restart local v2    # "op":I
    goto :goto_5

    .line 268
    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_7
    const/4 v9, 0x6

    iput v9, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 269
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 271
    :pswitch_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "op":I
    .restart local v2    # "op":I
    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    goto :goto_5

    .line 274
    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "op":I
    .restart local v2    # "op":I
    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    .line 275
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v9, v8, 0x2

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    move v2, v3

    .line 276
    .end local v3    # "op":I
    .restart local v2    # "op":I
    goto :goto_5

    .line 278
    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_a
    const/4 v9, 0x6

    iput v9, p0, Lcom/qtfreet00$Decoder;->state:I

    .line 279
    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v3    # "op":I
    .restart local v2    # "op":I
    :cond_c
    move v3, v2

    .end local v2    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_3

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 264
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
