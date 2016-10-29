.class final Ldlg;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/r;


# direct methods
.method constructor <init>(Lrx/r;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Ldlg;->a:Lrx/r;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ldlg;->a:Lrx/r;

    invoke-interface {v0, p1}, Lrx/r;->a(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public b_(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Ldlg;->a:Lrx/r;

    invoke-interface {v0, p1}, Lrx/r;->b_(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ldlg;->a:Lrx/r;

    invoke-interface {v0}, Lrx/r;->bt_()V

    .line 56
    return-void
.end method
