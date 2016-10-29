.class Lakn;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "Twttr"


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lakl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lakl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lakn;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lakl;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lakn;->b:Lakl;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 37
    sget-boolean v0, Lakn;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lakn;->b:Lakl;

    invoke-static {v0}, Lakl;->a(Lakl;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_0
    iget-object v0, p0, Lakn;->b:Lakl;

    iget-object v0, v0, Lakl;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lakn;->b:Lakl;

    invoke-static {v1}, Lakl;->a(Lakl;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lakn;->b:Lakl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lakl;->a(Lakl;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 40
    return-void
.end method
