.class Lcom/twitter/android/periscope/ad;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/twitter/android/periscope/ac;


# direct methods
.method constructor <init>(Lcom/twitter/android/periscope/ac;Z)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/twitter/android/periscope/ad;->b:Lcom/twitter/android/periscope/ac;

    iput-boolean p2, p0, Lcom/twitter/android/periscope/ad;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/periscope/ad;->b:Lcom/twitter/android/periscope/ac;

    invoke-static {v0}, Lcom/twitter/android/periscope/ac;->a(Lcom/twitter/android/periscope/ac;)Lcom/twitter/android/periscope/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/periscope/u;->d()Z

    move-result v1

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 62
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 64
    iget-object v0, p0, Lcom/twitter/android/periscope/ad;->b:Lcom/twitter/android/periscope/ac;

    invoke-static {v0}, Lcom/twitter/android/periscope/ac;->b(Lcom/twitter/android/periscope/ac;)Lard;

    move-result-object v4

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 65
    :goto_0
    invoke-interface {v4, v0}, Lard;->a(I)V

    .line 66
    iget-object v0, p0, Lcom/twitter/android/periscope/ad;->b:Lcom/twitter/android/periscope/ac;

    invoke-static {v0}, Lcom/twitter/android/periscope/ac;->b(Lcom/twitter/android/periscope/ac;)Lard;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lard;->b(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 68
    iget-object v0, p0, Lcom/twitter/android/periscope/ad;->b:Lcom/twitter/android/periscope/ac;

    invoke-static {v0}, Lcom/twitter/android/periscope/ac;->a(Lcom/twitter/android/periscope/ac;)Lcom/twitter/android/periscope/u;

    move-result-object v0

    iget-boolean v3, p0, Lcom/twitter/android/periscope/ad;->a:Z

    const v4, 0x7f0a0492

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/twitter/android/periscope/u;->a(ZZLjava/lang/CharSequence;)V

    .line 69
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
