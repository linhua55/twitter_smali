.class public Lcom/twitter/library/client/navigation/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcyv;


# instance fields
.field private final a:Lcyw;


# direct methods
.method public constructor <init>(Lcyw;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/twitter/library/client/navigation/d;->a:Lcyw;

    .line 17
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/client/navigation/d;)Lcyw;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/twitter/library/client/navigation/d;->a:Lcyw;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/library/client/navigation/d;->a:Lcyw;

    invoke-interface {v0}, Lcyw;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcyz;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/library/client/navigation/d;->a:Lcyw;

    new-instance v1, Lcom/twitter/library/client/navigation/e;

    invoke-direct {v1, p0, p1}, Lcom/twitter/library/client/navigation/e;-><init>(Lcom/twitter/library/client/navigation/d;Lcyz;)V

    invoke-interface {v0, v1}, Lcyw;->a(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/twitter/library/client/navigation/d;->a:Lcyw;

    new-instance v1, Lcom/twitter/library/client/navigation/f;

    invoke-direct {v1, p0, p1}, Lcom/twitter/library/client/navigation/f;-><init>(Lcom/twitter/library/client/navigation/d;Lcyz;)V

    invoke-interface {v0, v1}, Lcyw;->b(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/twitter/library/client/navigation/d;->a:Lcyw;

    new-instance v1, Lcom/twitter/library/client/navigation/g;

    invoke-direct {v1, p0, p1}, Lcom/twitter/library/client/navigation/g;-><init>(Lcom/twitter/library/client/navigation/d;Lcyz;)V

    invoke-interface {v0, v1}, Lcyw;->c(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
