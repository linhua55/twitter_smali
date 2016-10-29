.class public abstract Lcom/twitter/library/network/livepipeline/ai;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/library/network/livepipeline/ah;",
        "B:",
        "Lcom/twitter/library/network/livepipeline/ai;",
        ">",
        "Lcom/twitter/util/object/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/twitter/library/client/Session;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/twitter/library/network/livepipeline/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/ai;->a:Landroid/content/Context;

    .line 46
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/network/livepipeline/ai;

    return-object v0
.end method

.method public a(Lcom/twitter/library/client/Session;)Lcom/twitter/library/network/livepipeline/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/client/Session;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/ai;->b:Lcom/twitter/library/client/Session;

    .line 52
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/network/livepipeline/ai;

    return-object v0
.end method
