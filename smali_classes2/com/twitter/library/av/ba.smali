.class synthetic Lcom/twitter/library/av/ba;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/twitter/library/av/ScaleType;->values()[Lcom/twitter/library/av/ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/twitter/library/av/ba;->a:[I

    :try_start_0
    sget-object v0, Lcom/twitter/library/av/ba;->a:[I

    sget-object v1, Lcom/twitter/library/av/ScaleType;->a:Lcom/twitter/library/av/ScaleType;

    invoke-virtual {v1}, Lcom/twitter/library/av/ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/twitter/library/av/ba;->a:[I

    sget-object v1, Lcom/twitter/library/av/ScaleType;->b:Lcom/twitter/library/av/ScaleType;

    invoke-virtual {v1}, Lcom/twitter/library/av/ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
