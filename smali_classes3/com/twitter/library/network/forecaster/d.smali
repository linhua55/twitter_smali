.class Lcom/twitter/library/network/forecaster/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/library/client/z;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/util/x;

.field final synthetic b:Lcom/twitter/library/network/forecaster/c;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/forecaster/c;Lcom/twitter/util/x;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/twitter/library/network/forecaster/d;->b:Lcom/twitter/library/network/forecaster/c;

    iput-object p2, p0, Lcom/twitter/library/network/forecaster/d;->a:Lcom/twitter/util/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/z;)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/twitter/library/network/forecaster/d;->b:Lcom/twitter/library/network/forecaster/c;

    new-instance v1, Lcom/twitter/platform/o;

    iget-object v2, p1, Lcom/twitter/library/client/z;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/twitter/platform/o;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/twitter/library/network/forecaster/c;->a(Lcom/twitter/library/network/forecaster/c;Lcom/twitter/platform/q;)V

    .line 92
    iget-object v0, p0, Lcom/twitter/library/network/forecaster/d;->a:Lcom/twitter/util/x;

    invoke-virtual {v0, p0}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 93
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcom/twitter/library/client/z;

    invoke-virtual {p0, p1}, Lcom/twitter/library/network/forecaster/d;->a(Lcom/twitter/library/client/z;)V

    return-void
.end method
