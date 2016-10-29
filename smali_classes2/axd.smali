.class Laxd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lawv;


# direct methods
.method constructor <init>(Lawv;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Laxd;->a:Lawv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Laxd;->a:Lawv;

    invoke-static {v0}, Lawv;->e(Lawv;)Lawu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Laxd;->a:Lawv;

    invoke-static {v0}, Lawv;->e(Lawv;)Lawu;

    move-result-object v0

    invoke-interface {v0}, Lawu;->f()V

    .line 417
    :cond_0
    return-void
.end method
