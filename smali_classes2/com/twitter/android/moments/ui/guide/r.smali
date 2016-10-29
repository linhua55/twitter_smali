.class public Lcom/twitter/android/moments/ui/guide/r;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/guide/q;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/guide/h;

.field private final b:Lauf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauf",
            "<",
            "Lcom/twitter/android/moments/ui/guide/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lahi;

.field private final d:Lcom/twitter/android/client/as;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/guide/h;Lauf;Lahi;Lcom/twitter/android/client/as;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/guide/h;",
            "Lauf",
            "<",
            "Lcom/twitter/android/moments/ui/guide/ae;",
            ">;",
            "Lahi;",
            "Lcom/twitter/android/client/as;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/r;->a:Lcom/twitter/android/moments/ui/guide/h;

    .line 30
    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/r;->b:Lauf;

    .line 31
    iput-object p3, p0, Lcom/twitter/android/moments/ui/guide/r;->c:Lahi;

    .line 32
    iput-object p4, p0, Lcom/twitter/android/moments/ui/guide/r;->d:Lcom/twitter/android/client/as;

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "Create moment is not supported in moment picker."

    invoke-static {v0}, Lcom/twitter/util/h;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->f()Lcqc;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, v0, Lcqc;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/r;->d:Lcom/twitter/android/client/as;

    iget-object v0, v0, Lcqc;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/as;->a(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/MomentModule;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lcom/twitter/media/ui/image/r;",
            ">(",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/r;->a:Lcom/twitter/android/moments/ui/guide/h;

    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->e()Lcom/twitter/model/moments/DisplayStyle;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/moments/ui/guide/h;->a(JLcom/twitter/model/moments/DisplayStyle;Lcom/twitter/android/moments/viewmodels/MomentModule;Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/af;)V
    .locals 5

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/af;->c()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/af;->d()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/r;->b:Lauf;

    new-instance v3, Lcom/twitter/android/moments/ui/guide/ae;

    new-instance v4, Lcom/twitter/model/moments/t;

    invoke-direct {v4, v0, v1}, Lcom/twitter/model/moments/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/twitter/android/moments/ui/guide/ae;-><init>(Lcom/twitter/model/moments/t;)V

    invoke-virtual {v2, v3}, Lauf;->b(Lauc;)V

    .line 51
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/r;->c:Lahi;

    invoke-virtual {v1, v0}, Lahi;->b(Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string/jumbo v0, "Section Pivot does not contain a categoryId"

    invoke-static {v0}, Lcom/twitter/util/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
