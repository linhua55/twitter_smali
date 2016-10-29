.class public Lcom/twitter/app/drafts/s;
.super Lcom/twitter/app/common/list/aa;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/di/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/aa",
        "<",
        "Lcom/twitter/model/drafts/d;",
        "Lcom/twitter/app/drafts/j;",
        ">;",
        "Lcom/twitter/app/common/di/g;"
    }
.end annotation


# instance fields
.field private final f:Lrx/ap;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/twitter/app/drafts/x;Lcom/twitter/app/drafts/m;Lauf;Laux;Lcom/twitter/app/drafts/p;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Lcom/twitter/app/drafts/x;",
            "Lcom/twitter/app/drafts/m;",
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;",
            "Laux;",
            "Lcom/twitter/app/drafts/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/twitter/app/common/list/aa;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/app/common/list/aj;)V

    .line 57
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 58
    new-instance v0, Lcom/twitter/app/drafts/j;

    invoke-direct {v0, v6, p1}, Lcom/twitter/app/drafts/j;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    invoke-virtual {p0, v0}, Lcom/twitter/app/drafts/s;->a(Lcvt;)V

    .line 59
    iget-object v7, p0, Lcom/twitter/app/drafts/s;->a:Landroid/widget/ListView;

    new-instance v0, Lcom/twitter/app/drafts/t;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/twitter/app/drafts/t;-><init>(Lcom/twitter/app/drafts/s;Lauf;Laux;Lcom/twitter/app/drafts/x;Lcom/twitter/app/drafts/p;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    iget-object v7, p0, Lcom/twitter/app/drafts/s;->a:Landroid/widget/ListView;

    new-instance v0, Lcom/twitter/app/drafts/u;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/twitter/app/drafts/u;-><init>(Lcom/twitter/app/drafts/s;Lauf;Laux;Lcom/twitter/app/drafts/x;Lcom/twitter/app/drafts/p;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 108
    invoke-interface {p3}, Lcom/twitter/app/drafts/m;->a()Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/app/drafts/w;

    invoke-direct {v1, p0}, Lcom/twitter/app/drafts/w;-><init>(Lcom/twitter/app/drafts/s;)V

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/s;->f:Lrx/ap;

    .line 114
    return-void
.end method

.method static a(JLandroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;)V
    .locals 8

    .prologue
    .line 146
    new-instance v1, Lcom/twitter/android/composer/bt;

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/composer/bt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JZ)V

    .line 147
    sget-object v0, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->g:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/bt;->a(Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)V

    .line 148
    invoke-virtual {p4, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 149
    return-void
.end method

.method static a(Lauf;Lcom/twitter/model/drafts/d;Laux;Lcom/twitter/app/drafts/x;Lcom/twitter/app/drafts/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;",
            "Lcom/twitter/model/drafts/d;",
            "Laux;",
            "Lcom/twitter/app/drafts/x;",
            "Lcom/twitter/app/drafts/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p3}, Lcom/twitter/app/drafts/x;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/drafts/d;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 133
    invoke-virtual {p3}, Lcom/twitter/app/drafts/x;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lauf;->b(Lauc;)V

    .line 134
    invoke-virtual {p4}, Lcom/twitter/app/drafts/p;->b()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/twitter/model/drafts/d;->a:Lcom/twitter/util/serialization/d;

    invoke-interface {p2, p1, v0}, Laux;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->e:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/twitter/app/drafts/s;->f:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/app/drafts/s;->a(Lcmf;)V

    .line 122
    :cond_0
    return-void
.end method
