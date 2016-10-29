.class public Laib;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laig;


# instance fields
.field private final a:Lahy;

.field private final b:Laih;

.field private c:Lrx/subjects/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/twitter/android/moments/viewmodels/u;

.field private e:Lcom/twitter/model/moments/a;

.field private f:Lcom/twitter/library/scribe/TwitterScribeAssociation;


# direct methods
.method public constructor <init>(Laih;Lahy;)V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lrx/subjects/c;->q()Lrx/subjects/c;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Laib;-><init>(Laih;Lahy;Lrx/subjects/c;)V

    .line 51
    return-void
.end method

.method constructor <init>(Laih;Lahy;Lrx/subjects/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laih;",
            "Lahy;",
            "Lrx/subjects/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Laib;->a:Lahy;

    .line 57
    iput-object p1, p0, Laib;->b:Laih;

    .line 58
    iput-object p3, p0, Laib;->c:Lrx/subjects/c;

    .line 59
    return-void
.end method

.method static synthetic a(Laib;)Lahy;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Laib;->a:Lahy;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/library/client/Session;)Laib;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Laib;

    new-instance v1, Laih;

    invoke-direct {v1, p0}, Laih;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {p0, p1}, Lahy;->a(Landroid/app/Activity;Lcom/twitter/library/client/Session;)Lahy;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Laib;-><init>(Laih;Lahy;)V

    .line 44
    return-object v0
.end method

.method static synthetic b(Laib;)Laih;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Laib;->b:Laih;

    return-object v0
.end method

.method static synthetic c(Laib;)Lcom/twitter/android/moments/viewmodels/u;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Laib;->d:Lcom/twitter/android/moments/viewmodels/u;

    return-object v0
.end method

.method static synthetic d(Laib;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Laib;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method static synthetic e(Laib;)Lcom/twitter/model/moments/a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Laib;->e:Lcom/twitter/model/moments/a;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Laib;->d:Lcom/twitter/android/moments/viewmodels/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laib;->d:Lcom/twitter/android/moments/viewmodels/u;

    invoke-interface {v0}, Lcom/twitter/android/moments/viewmodels/u;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Laib;->b:Laih;

    invoke-virtual {v0}, Laih;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Laib;->a:Lahy;

    invoke-virtual {v0, p1}, Lahy;->a(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/u;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 2

    .prologue
    .line 76
    iput-object p1, p0, Laib;->d:Lcom/twitter/android/moments/viewmodels/u;

    .line 77
    iput-object p2, p0, Laib;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 78
    iget-object v0, p0, Laib;->c:Lrx/subjects/c;

    invoke-static {}, Ldcn;->f()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/c;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Laic;

    invoke-direct {v1, p0, p1}, Laic;-><init>(Laib;Lcom/twitter/android/moments/viewmodels/u;)V

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    .line 85
    return-void
.end method

.method public a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    if-nez p1, :cond_0

    .line 164
    iget-object v0, p0, Laib;->c:Lrx/subjects/c;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/c;->b_(Ljava/lang/Object;)V

    .line 177
    :goto_0
    return-void

    .line 167
    :cond_0
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    .line 168
    invoke-static {v0}, Lcom/twitter/model/core/p;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v0, p0, Laib;->c:Lrx/subjects/c;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/c;->b_(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Laib;->b:Laih;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laih;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-static {v0}, Lcom/twitter/model/core/p;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Laib;->c:Lrx/subjects/c;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/c;->b_(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Laib;->b:Laih;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laih;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Laib;->c:Lrx/subjects/c;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/c;->b_(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/moments/a;)V
    .locals 2

    .prologue
    .line 96
    iput-object p1, p0, Laib;->e:Lcom/twitter/model/moments/a;

    .line 97
    iget-object v0, p0, Laib;->e:Lcom/twitter/model/moments/a;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Laib;->c:Lrx/subjects/c;

    invoke-static {}, Ldcn;->f()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/c;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Laid;

    invoke-direct {v1, p0, p1}, Laid;-><init>(Laib;Lcom/twitter/model/moments/a;)V

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    .line 105
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Laib;->d:Lcom/twitter/android/moments/viewmodels/u;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Laib;->c:Lrx/subjects/c;

    invoke-static {}, Ldcn;->f()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/c;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Laie;

    invoke-direct {v1, p0}, Laie;-><init>(Laib;)V

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Laib;->c:Lrx/subjects/c;

    invoke-virtual {v0}, Lrx/subjects/c;->bt_()V

    .line 132
    invoke-static {}, Lrx/subjects/c;->q()Lrx/subjects/c;

    move-result-object v0

    iput-object v0, p0, Laib;->c:Lrx/subjects/c;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Laib;->d:Lcom/twitter/android/moments/viewmodels/u;

    .line 134
    iget-object v0, p0, Laib;->a:Lahy;

    invoke-virtual {v0}, Lahy;->a()V

    .line 135
    return-void
.end method

.method public d()Lcom/twitter/library/widget/a;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Laib;->a:Lahy;

    invoke-virtual {v0}, Lahy;->b()Lcom/twitter/library/widget/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Laib;->b:Laih;

    invoke-virtual {v0}, Laih;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
