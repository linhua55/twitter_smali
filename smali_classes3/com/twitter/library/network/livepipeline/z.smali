.class public Lcom/twitter/library/network/livepipeline/z;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/library/network/livepipeline/z;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a()Lcom/twitter/library/network/livepipeline/z;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/twitter/library/network/livepipeline/z;->a:Lcom/twitter/library/network/livepipeline/z;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/twitter/library/network/livepipeline/z;

    invoke-direct {v0}, Lcom/twitter/library/network/livepipeline/z;-><init>()V

    sput-object v0, Lcom/twitter/library/network/livepipeline/z;->a:Lcom/twitter/library/network/livepipeline/z;

    .line 28
    :cond_0
    sget-object v0, Lcom/twitter/library/network/livepipeline/z;->a:Lcom/twitter/library/network/livepipeline/z;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/network/livepipeline/CallbackContext;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/twitter/library/network/livepipeline/CallbackContext;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/livepipeline/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/library/network/livepipeline/ad;

    invoke-direct {v0}, Lcom/twitter/library/network/livepipeline/ad;-><init>()V

    sget-object v1, Lcom/twitter/model/livepipeline/PipelineEventType;->d:Lcom/twitter/model/livepipeline/PipelineEventType;

    .line 35
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/livepipeline/ad;->a(Lcom/twitter/model/livepipeline/PipelineEventType;)Lcom/twitter/library/network/livepipeline/ad;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p2}, Lcom/twitter/library/network/livepipeline/ad;->a(Ljava/lang/Object;)Lcom/twitter/library/network/livepipeline/ad;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p3}, Lcom/twitter/library/network/livepipeline/ad;->a(Lcom/twitter/library/network/livepipeline/CallbackContext;)Lcom/twitter/library/network/livepipeline/ad;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/ad;->a()Lcom/twitter/library/network/livepipeline/ac;

    move-result-object v0

    .line 39
    invoke-static {p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Landroid/content/Context;)Lcom/twitter/library/network/livepipeline/LivePipeline;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/ac;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/o;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/twitter/library/network/livepipeline/ao;

    invoke-direct {v0}, Lcom/twitter/library/network/livepipeline/ao;-><init>()V

    .line 55
    invoke-virtual {v0, p2}, Lcom/twitter/library/network/livepipeline/ao;->a(Ljava/lang/String;)Lcom/twitter/library/network/livepipeline/ao;

    move-result-object v0

    .line 56
    invoke-static {p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Landroid/content/Context;)Lcom/twitter/library/network/livepipeline/LivePipeline;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/ai;)V

    .line 57
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/network/livepipeline/CallbackContext;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/twitter/library/network/livepipeline/CallbackContext;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/livepipeline/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/twitter/library/network/livepipeline/ad;

    invoke-direct {v0}, Lcom/twitter/library/network/livepipeline/ad;-><init>()V

    sget-object v1, Lcom/twitter/model/livepipeline/PipelineEventType;->e:Lcom/twitter/model/livepipeline/PipelineEventType;

    .line 46
    invoke-virtual {v0, v1}, Lcom/twitter/library/network/livepipeline/ad;->a(Lcom/twitter/model/livepipeline/PipelineEventType;)Lcom/twitter/library/network/livepipeline/ad;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p2}, Lcom/twitter/library/network/livepipeline/ad;->a(Ljava/lang/Object;)Lcom/twitter/library/network/livepipeline/ad;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p3}, Lcom/twitter/library/network/livepipeline/ad;->a(Lcom/twitter/library/network/livepipeline/CallbackContext;)Lcom/twitter/library/network/livepipeline/ad;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/twitter/library/network/livepipeline/ad;->a()Lcom/twitter/library/network/livepipeline/ac;

    move-result-object v0

    .line 50
    invoke-static {p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Landroid/content/Context;)Lcom/twitter/library/network/livepipeline/LivePipeline;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/ac;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/o;

    return-object v0
.end method
