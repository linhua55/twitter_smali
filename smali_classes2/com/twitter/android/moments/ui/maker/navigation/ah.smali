.class public Lcom/twitter/android/moments/ui/maker/navigation/ah;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/navigation/ao;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/navigation/ak;

.field private final b:Landroid/app/Activity;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/twitter/android/moments/ui/maker/navigation/ap;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/android/moments/ui/maker/navigation/at;

.field private final f:Lcom/twitter/android/moments/ui/maker/navigation/ag;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/navigation/ag;Lcom/twitter/android/moments/ui/maker/navigation/ak;Lcom/twitter/android/moments/ui/maker/navigation/at;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->b:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->c:Landroid/view/ViewGroup;

    .line 33
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->f:Lcom/twitter/android/moments/ui/maker/navigation/ag;

    .line 34
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->a:Lcom/twitter/android/moments/ui/maker/navigation/ak;

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->d:Ljava/util/Deque;

    .line 36
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->e:Lcom/twitter/android/moments/ui/maker/navigation/at;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/navigation/ah;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/navigation/ah;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->g:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 68
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->g:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/ap;

    .line 73
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->d:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/moments/ui/maker/navigation/ap;

    .line 74
    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ap;->c()Lcom/twitter/android/moments/ui/maker/navigation/au;

    move-result-object v2

    .line 75
    iput-boolean v3, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->g:Z

    .line 76
    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->e:Lcom/twitter/android/moments/ui/maker/navigation/at;

    .line 77
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/navigation/aq;->a()Lcom/twitter/android/moments/ui/maker/navigation/ar;

    move-result-object v4

    .line 78
    invoke-virtual {v4, v0}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->a(Lcom/twitter/android/moments/ui/maker/navigation/ap;)Lcom/twitter/android/moments/ui/maker/navigation/ar;

    move-result-object v4

    .line 79
    invoke-virtual {v4, v1}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->b(Lcom/twitter/android/moments/ui/maker/navigation/ap;)Lcom/twitter/android/moments/ui/maker/navigation/ar;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->a(Lcom/twitter/android/moments/ui/maker/navigation/au;)Lcom/twitter/android/moments/ui/maker/navigation/ar;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->d()Lcom/twitter/android/moments/ui/maker/navigation/aq;

    move-result-object v1

    .line 77
    invoke-interface {v3, v1}, Lcom/twitter/android/moments/ui/maker/navigation/at;->a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lrx/w;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/maker/navigation/aj;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/moments/ui/maker/navigation/aj;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/ah;Lcom/twitter/android/moments/ui/maker/navigation/ap;)V

    .line 82
    invoke-virtual {v1, v2}, Lrx/w;->b(Lrx/ao;)Lrx/ap;

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;Lcom/twitter/android/moments/ui/maker/navigation/an;)V
    .locals 5

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->g:Z

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->a:Lcom/twitter/android/moments/ui/maker/navigation/ak;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->f:Lcom/twitter/android/moments/ui/maker/navigation/ag;

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/twitter/android/moments/ui/maker/navigation/ak;->a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;Lcom/twitter/android/moments/ui/maker/navigation/an;Lcom/twitter/android/moments/ui/maker/navigation/ag;)Lcom/twitter/android/moments/ui/maker/navigation/ap;

    move-result-object v2

    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/ap;

    .line 45
    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ap;->c()Lcom/twitter/android/moments/ui/maker/navigation/au;

    move-result-object v1

    .line 47
    :goto_0
    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->c:Landroid/view/ViewGroup;

    invoke-interface {v2}, Lcom/twitter/android/moments/ui/maker/navigation/ap;->a()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->d:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 49
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->g:Z

    .line 50
    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/navigation/ah;->e:Lcom/twitter/android/moments/ui/maker/navigation/at;

    .line 51
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/navigation/aq;->a()Lcom/twitter/android/moments/ui/maker/navigation/ar;

    move-result-object v4

    .line 52
    invoke-virtual {v4, v0}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->a(Lcom/twitter/android/moments/ui/maker/navigation/ap;)Lcom/twitter/android/moments/ui/maker/navigation/ar;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->b(Lcom/twitter/android/moments/ui/maker/navigation/ap;)Lcom/twitter/android/moments/ui/maker/navigation/ar;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->a(Lcom/twitter/android/moments/ui/maker/navigation/au;)Lcom/twitter/android/moments/ui/maker/navigation/ar;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ar;->d()Lcom/twitter/android/moments/ui/maker/navigation/aq;

    move-result-object v0

    .line 51
    invoke-interface {v3, v0}, Lcom/twitter/android/moments/ui/maker/navigation/at;->a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/navigation/ai;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/navigation/ai;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/ah;)V

    .line 56
    invoke-virtual {v0, v1}, Lrx/w;->b(Lrx/ao;)Lrx/ap;

    .line 63
    :cond_0
    return-void

    .line 46
    :cond_1
    sget-object v1, Lcom/twitter/android/moments/ui/maker/navigation/au;->b:Lcom/twitter/android/moments/ui/maker/navigation/au;

    goto :goto_0
.end method
