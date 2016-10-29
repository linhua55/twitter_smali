.class public Lcom/twitter/android/moments/ui/fullscreen/bu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/moments/core/ui/widget/sectionpager/d;


# instance fields
.field private final a:Laju;

.field private final b:Lcom/twitter/android/moments/data/h;

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/fy;

.field private final d:Lcom/twitter/android/moments/ui/fullscreen/dt;


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/ad;Laju;Lcom/twitter/android/moments/data/ae;Lahp;Lcom/twitter/android/moments/ui/fullscreen/fy;Lcom/twitter/android/moments/ui/fullscreen/dt;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->c:Lcom/twitter/android/moments/ui/fullscreen/fy;

    .line 29
    iput-object p6, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->d:Lcom/twitter/android/moments/ui/fullscreen/dt;

    .line 30
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->a:Laju;

    .line 32
    new-instance v0, Laio;

    .line 33
    invoke-virtual {p2}, Laju;->a()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Laio;-><init>(Landroid/view/View;)V

    .line 34
    new-instance v1, Lcom/twitter/android/moments/data/h;

    invoke-direct {v1, v0, p3, p4}, Lcom/twitter/android/moments/data/h;-><init>(Laio;Lcom/twitter/android/moments/data/ae;Lahp;)V

    iput-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->b:Lcom/twitter/android/moments/data/h;

    .line 36
    invoke-virtual {p2}, Laju;->b()Landroid/view/ViewGroup;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->c:Lcom/twitter/android/moments/ui/fullscreen/fy;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->a(Landroid/view/ViewGroup;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/bu;->a(Lcom/twitter/model/moments/ad;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/bu;)Lcom/twitter/android/moments/ui/fullscreen/dt;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->d:Lcom/twitter/android/moments/ui/fullscreen/dt;

    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/ad;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->b:Lcom/twitter/android/moments/data/h;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/data/h;->a(Lcom/twitter/model/moments/ad;)V

    .line 50
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->a:Laju;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/bv;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/bv;-><init>(Lcom/twitter/android/moments/ui/fullscreen/bu;)V

    invoke-virtual {v0, v1}, Laju;->a(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->b:Lcom/twitter/android/moments/data/h;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/h;->a()V

    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->c:Lcom/twitter/android/moments/ui/fullscreen/fy;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->c()V

    .line 72
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->c:Lcom/twitter/android/moments/ui/fullscreen/fy;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->b()V

    .line 66
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->c:Lcom/twitter/android/moments/ui/fullscreen/fy;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->a()V

    .line 61
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bu;->a:Laju;

    invoke-virtual {v0}, Laju;->a()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
