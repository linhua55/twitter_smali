.class Lcve;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcvc;


# direct methods
.method constructor <init>(Lcvc;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcve;->a:Lcvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcve;->a:Lcvc;

    invoke-static {v0}, Lcvc;->b(Lcvc;)Lcvb;

    move-result-object v0

    invoke-virtual {v0}, Lcvb;->b()V

    .line 165
    return-void
.end method
