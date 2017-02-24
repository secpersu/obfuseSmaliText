.class public Lcom/qtfreet00;
.super Ljava/lang/Object;
.source "qtfreet00.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qtfreet00$Encoder;,
        Lcom/qtfreet00$Decoder;,
        Lcom/qtfreet00$Coder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CRLF:I = 0x4

.field private static final DEFAULT:I = 0x0

.field private static final NO_CLOSE:I = 0x10

.field private static final NO_PADDING:I = 0x1

.field private static final NO_WRAP:I = 0x2

.field private static final URL_SAFE:I = 0x8

.field private static final key:Ljava/lang/String; = "Encrypt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/qtfreet00;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/qtfreet00;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    return-void
.end method

.method public static decString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 39
    if-nez p0, :cond_0

    move-object v6, v7

    .line 60
    :goto_0
    return-object v6

    .line 43
    :cond_0
    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0, v8}, Lcom/qtfreet00;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 44
    .local v0, "b":[B
    array-length v5, v0

    .line 45
    .local v5, "lenStr":I
    const-string v8, "Encrypt"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .line 46
    .local v4, "lenKey":I
    const/4 v2, 0x0

    .line 47
    .local v2, "i":I
    const/4 v3, 0x0

    .line 48
    .local v3, "j":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 49
    if-lt v3, v4, :cond_1

    .line 50
    const/4 v3, 0x0

    .line 52
    :cond_1
    aget-byte v8, v0, v2

    const-string v9, "Encrypt"

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    :cond_2
    new-instance v6, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v6, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 57
    .local v6, "s":Ljava/lang/String;
    const-string v8, "qtfreet00"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v0    # "b":[B
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "lenKey":I
    .end local v5    # "lenStr":I
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v6, v7

    .line 60
    goto :goto_0
.end method

.method private static decode(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qtfreet00;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private static decode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/qtfreet00;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method private static decode([BIII)[B
    .locals 5
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 108
    new-instance v0, Lcom/qtfreet00$Decoder;

    mul-int/lit8 v2, p2, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-direct {v0, p3, v2, v3}, Lcom/qtfreet00$Decoder;-><init>(I[BLcom/qtfreet00$1;)V

    .line 110
    .local v0, "decoder":Lcom/qtfreet00$Decoder;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, p2, v2}, Lcom/qtfreet00$Decoder;->process([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad base-64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    iget v2, v0, Lcom/qtfreet00$Decoder;->op:I

    iget-object v3, v0, Lcom/qtfreet00$Decoder;->output:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 115
    iget-object v1, v0, Lcom/qtfreet00$Decoder;->output:[B

    .line 120
    :goto_0
    return-object v1

    .line 118
    :cond_1
    iget v2, v0, Lcom/qtfreet00$Decoder;->op:I

    new-array v1, v2, [B

    .line 119
    .local v1, "temp":[B
    iget-object v2, v0, Lcom/qtfreet00$Decoder;->output:[B

    iget v3, v0, Lcom/qtfreet00$Decoder;->op:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static encString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 34
    :goto_0
    return-object v6

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 20
    .local v0, "b":[B
    array-length v5, v0

    .line 21
    .local v5, "lenStr":I
    const-string v7, "Encrypt"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 22
    .local v4, "lenKey":I
    const/4 v2, 0x0

    .line 23
    .local v2, "i":I
    const/4 v3, 0x0

    .line 24
    .local v3, "j":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 25
    if-lt v3, v4, :cond_1

    .line 26
    const/4 v3, 0x0

    .line 28
    :cond_1
    aget-byte v7, v0, v2

    const-string v8, "Encrypt"

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 32
    :cond_2
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v0, v8}, Lcom/qtfreet00;->encode([BI)[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 33
    .end local v0    # "b":[B
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "lenKey":I
    .end local v5    # "lenStr":I
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static encode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 315
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/qtfreet00;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method private static encode([BIII)[B
    .locals 5
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 323
    new-instance v0, Lcom/qtfreet00$Encoder;

    invoke-direct {v0, p3, v2, v2}, Lcom/qtfreet00$Encoder;-><init>(I[BLcom/qtfreet00$1;)V

    .line 325
    .local v0, "encoder":Lcom/qtfreet00$Encoder;
    div-int/lit8 v2, p2, 0x3

    mul-int/lit8 v1, v2, 0x4

    .line 327
    .local v1, "output_len":I
    # getter for: Lcom/qtfreet00$Encoder;->do_padding:Z
    invoke-static {v0}, Lcom/qtfreet00$Encoder;->access$300(Lcom/qtfreet00$Encoder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_0

    .line 329
    add-int/lit8 v1, v1, 0x4

    .line 344
    :cond_0
    :goto_0
    :pswitch_0
    # getter for: Lcom/qtfreet00$Encoder;->do_newline:Z
    invoke-static {v0}, Lcom/qtfreet00$Encoder;->access$400(Lcom/qtfreet00$Encoder;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez p2, :cond_1

    .line 345
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/lit8 v4, v2, 0x1

    # getter for: Lcom/qtfreet00$Encoder;->do_cr:Z
    invoke-static {v0}, Lcom/qtfreet00$Encoder;->access$500(Lcom/qtfreet00$Encoder;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_1
    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 348
    :cond_1
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/qtfreet00$Encoder;->output:[B

    .line 349
    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/qtfreet00$Encoder;->process([BIIZ)Z

    .line 351
    sget-boolean v2, Lcom/qtfreet00;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    iget v2, v0, Lcom/qtfreet00$Encoder;->op:I

    if-eq v2, v1, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 332
    :cond_2
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 336
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 337
    goto :goto_0

    .line 339
    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 345
    goto :goto_1

    .line 353
    :cond_4
    iget-object v2, v0, Lcom/qtfreet00$Encoder;->output:[B

    return-object v2

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static encodeToString([BI)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 294
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/qtfreet00;->encode([BI)[B

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static encodeToString([BIII)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .prologue
    .line 306
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/qtfreet00;->encode([BIII)[B

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
