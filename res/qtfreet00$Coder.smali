.class abstract Lcom/qtfreet00$Coder;
.super Ljava/lang/Object;
.source "qtfreet00.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qtfreet00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Coder"
.end annotation


# instance fields
.field op:I

.field output:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qtfreet00$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qtfreet00$1;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/qtfreet00$Coder;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract maxOutputSize(I)I
.end method

.method public abstract process([BIIZ)Z
.end method
