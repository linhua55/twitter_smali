.class public Lcom/twitter/android/moments/ui/fullscreen/fk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/moments/core/ui/widget/sectionpager/d;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/fullscreen/fy;

.field private b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Laju;Lcom/twitter/android/moments/ui/fullscreen/fy;Lcom/twitter/android/moments/ui/fullscreen/dt;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/fk;->a:Lcom/twitter/android/moments/ui/fullscreen/fy;

    .line 25
    invoke-virtual {p1}, Laju;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fk;->b:Landroid/view/ViewGroup;

    .line 26
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/fl;

    invoke-direct {v0, p0, p3}, Lcom/twitter/android/moments/ui/fullscreen/fl;-><init>(Lcom/twitter/android/moments/ui/fullscreen/fk;Lcom/twitter/android/moments/ui/fullscreen/dt;)V

    invoke-virtual {p1, v0}, Laju;->a(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p1}, Laju;->b()Landroid/view/ViewGroup;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/fk;->a:Lcom/twitter/android/moments/ui/fullscreen/fy;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->a(Landroid/view/ViewGroup;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fk;->a:Lcom/twitter/android/moments/ui/fullscreen/fy;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->c()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fk;->b:Landroid/view/ViewGroup;

    .line 50
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fk;->a:Lcom/twitter/android/moments/ui/fullscreen/fy;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->b()V

    .line 44
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fk;->a:Lcom/twitter/android/moments/ui/fullscreen/fy;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->a()V

    .line 39
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fk;->b:Landroid/view/ViewGroup;

    return-object v0
.end method
