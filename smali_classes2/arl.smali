.class Larl;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Lark;


# direct methods
.method constructor <init>(Lark;Lrx/ao;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Larl;->b:Lark;

    iput-object p2, p0, Larl;->a:Lrx/ao;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Larl;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Larl;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Larl;->a:Lrx/ao;

    check-cast p1, Lbul;

    iget v1, p1, Lbul;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Larl;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 96
    :cond_0
    return-void
.end method
