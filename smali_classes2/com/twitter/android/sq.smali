.class Lcom/twitter/android/sq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twitter/model/core/Tweet;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lcom/twitter/android/sn;


# direct methods
.method constructor <init>(Lcom/twitter/android/sn;Landroid/view/View;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/twitter/android/sq;->e:Lcom/twitter/android/sn;

    iput-object p2, p0, Lcom/twitter/android/sq;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/twitter/android/sq;->b:Lcom/twitter/model/core/Tweet;

    iput-object p4, p0, Lcom/twitter/android/sq;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/sq;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 659
    iget-object v0, p0, Lcom/twitter/android/sq;->e:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/sq;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/twitter/android/sq;->b:Lcom/twitter/model/core/Tweet;

    sget-object v3, Lcom/twitter/library/api/PromotedEvent;->i:Lcom/twitter/library/api/PromotedEvent;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "dismiss"

    iget-object v6, p0, Lcom/twitter/android/sq;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/sn;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/twitter/android/sq;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/twitter/android/sq;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 664
    :cond_0
    return-void
.end method
