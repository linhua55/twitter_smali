.class Lcom/twitter/library/api/upload/y;
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
        "Lbqy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Lcom/twitter/library/api/upload/x;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/upload/x;Lrx/ao;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/twitter/library/api/upload/y;->b:Lcom/twitter/library/api/upload/x;

    iput-object p2, p0, Lcom/twitter/library/api/upload/y;->a:Lrx/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbqy;)V
    .locals 2

    .prologue
    .line 138
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/api/upload/y;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/twitter/library/api/upload/y;->a:Lrx/ao;

    invoke-static {p1}, Lcom/twitter/library/api/upload/ab;->a(Lbqy;)Lcom/twitter/library/api/upload/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 141
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 135
    check-cast p1, Lbqy;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/upload/y;->a(Lbqy;)V

    return-void
.end method
