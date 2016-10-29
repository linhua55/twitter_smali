.class public Lcom/twitter/android/d;
.super Lcom/twitter/util/ui/c;
.source "Twttr"


# instance fields
.field private final a:Landroid/view/animation/Animation;

.field private final b:Landroid/view/animation/Animation;

.field private final c:Landroid/view/View;

.field private final d:Lcom/twitter/android/e;

.field private e:Lcom/twitter/app/common/account/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/twitter/android/e;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/util/ui/c;-><init>()V

    .line 28
    const v0, 0x7f050050

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/d;->a:Landroid/view/animation/Animation;

    .line 29
    const v0, 0x7f050051

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/d;->b:Landroid/view/animation/Animation;

    .line 30
    iget-object v0, p0, Lcom/twitter/android/d;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 31
    iput-object p2, p0, Lcom/twitter/android/d;->c:Landroid/view/View;

    .line 32
    iput-object p3, p0, Lcom/twitter/android/d;->d:Lcom/twitter/android/e;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/account/a;)V
    .locals 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/twitter/android/d;->e:Lcom/twitter/app/common/account/a;

    .line 37
    iget-object v0, p0, Lcom/twitter/android/d;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/d;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/d;->d:Lcom/twitter/android/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/d;->e:Lcom/twitter/app/common/account/a;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/twitter/android/d;->d:Lcom/twitter/android/e;

    iget-object v1, p0, Lcom/twitter/android/d;->e:Lcom/twitter/app/common/account/a;

    invoke-virtual {v1}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v2

    iget-object v1, p0, Lcom/twitter/android/d;->e:Lcom/twitter/app/common/account/a;

    invoke-virtual {v1}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/twitter/android/e;->a(JLjava/lang/String;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/d;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/d;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/d;->e:Lcom/twitter/app/common/account/a;

    .line 47
    return-void
.end method
