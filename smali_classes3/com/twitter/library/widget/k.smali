.class Lcom/twitter/library/widget/k;
.super Lcom/twitter/util/ui/c;
.source "Twttr"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcik;

.field final synthetic c:Lcom/twitter/library/widget/InlineActionBar;


# direct methods
.method constructor <init>(Lcom/twitter/library/widget/InlineActionBar;ZLcik;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/twitter/library/widget/k;->c:Lcom/twitter/library/widget/InlineActionBar;

    iput-boolean p2, p0, Lcom/twitter/library/widget/k;->a:Z

    iput-object p3, p0, Lcom/twitter/library/widget/k;->b:Lcik;

    invoke-direct {p0}, Lcom/twitter/util/ui/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/twitter/library/widget/k;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/k;->c:Lcom/twitter/library/widget/InlineActionBar;

    invoke-static {v0}, Lcom/twitter/library/widget/InlineActionBar;->a(Lcom/twitter/library/widget/InlineActionBar;)Lcom/twitter/library/widget/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/twitter/library/widget/k;->c:Lcom/twitter/library/widget/InlineActionBar;

    invoke-static {v0}, Lcom/twitter/library/widget/InlineActionBar;->a(Lcom/twitter/library/widget/InlineActionBar;)Lcom/twitter/library/widget/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/widget/k;->b:Lcik;

    invoke-virtual {v1}, Lcik;->a()Lcom/twitter/model/core/TweetActionType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/library/widget/n;->a(Lcom/twitter/model/core/TweetActionType;)V

    .line 209
    :cond_0
    return-void
.end method
