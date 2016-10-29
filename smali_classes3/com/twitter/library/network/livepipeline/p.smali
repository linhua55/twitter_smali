.class Lcom/twitter/library/network/livepipeline/p;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/network/livepipeline/LivePipeline;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/p;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 206
    invoke-static {p1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 207
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 203
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/twitter/library/network/livepipeline/p;->a(Ljava/lang/Throwable;)V

    return-void
.end method
