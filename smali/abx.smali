.class public Labx;
.super Laxf;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laxf",
        "<",
        "Labx;",
        ">;"
    }
.end annotation


# instance fields
.field a:Laby;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Laxf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Labv;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Labv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labv;-><init>(Labx;Labw;)V

    return-object v0
.end method

.method public a(Laby;)Labx;
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Labx;->a:Laby;

    .line 43
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labx;

    return-object v0
.end method

.method public synthetic b()Lawv;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Labx;->a()Labv;

    move-result-object v0

    return-object v0
.end method
