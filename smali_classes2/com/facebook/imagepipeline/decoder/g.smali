.class Lcom/facebook/imagepipeline/decoder/g;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/decoder/f;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/imagepipeline/decoder/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
