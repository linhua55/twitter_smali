.class Lcvd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/twitter/util/math/c;

.field final synthetic b:Z

.field final synthetic c:Lcvc;


# direct methods
.method constructor <init>(Lcvc;Lcom/twitter/util/math/c;Z)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcvd;->c:Lcvc;

    iput-object p2, p0, Lcvd;->a:Lcom/twitter/util/math/c;

    iput-boolean p3, p0, Lcvd;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    .prologue
    .line 67
    sub-int v0, p4, p2

    .line 68
    sub-int v1, p5, p3

    .line 69
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 70
    iget-object v2, p0, Lcvd;->c:Lcvc;

    iget-object v3, p0, Lcvd;->a:Lcom/twitter/util/math/c;

    iget-boolean v4, p0, Lcvd;->b:Z

    invoke-virtual {v2, v0, v1, v3, v4}, Lcvc;->a(IILcom/twitter/util/math/c;Z)V

    .line 71
    iget-object v0, p0, Lcvd;->c:Lcvc;

    invoke-static {v0}, Lcvc;->a(Lcvc;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 73
    :cond_0
    return-void
.end method
