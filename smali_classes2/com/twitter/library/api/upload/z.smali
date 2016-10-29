.class Lcom/twitter/library/api/upload/z;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/e",
        "<",
        "Lcom/twitter/library/api/upload/h;",
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
    .line 143
    iput-object p1, p0, Lcom/twitter/library/api/upload/z;->b:Lcom/twitter/library/api/upload/x;

    iput-object p2, p0, Lcom/twitter/library/api/upload/z;->a:Lrx/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/api/upload/h;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/twitter/library/api/upload/z;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/twitter/library/api/upload/z;->a:Lrx/ao;

    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/upload/h;

    invoke-static {v0}, Lcom/twitter/library/api/upload/ab;->a(Lcom/twitter/library/api/upload/h;)Lcom/twitter/library/api/upload/ab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/twitter/library/api/upload/z;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 150
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    check-cast p1, Lcom/twitter/library/api/upload/h;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/upload/z;->a(Lcom/twitter/library/api/upload/h;)V

    return-void
.end method
