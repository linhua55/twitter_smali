.class public Lalr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lalp;


# instance fields
.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/t;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lauf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauf",
            "<",
            "Lcom/twitter/android/moments/ui/guide/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lahi;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lrx/o;Lauf;Lahi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/t;",
            ">;>;",
            "Lauf",
            "<",
            "Lcom/twitter/android/moments/ui/guide/ae;",
            ">;",
            "Lahi;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lalr;->b:Landroid/view/LayoutInflater;

    .line 30
    iput-object p2, p0, Lalr;->c:Lrx/o;

    .line 31
    iput-object p3, p0, Lalr;->d:Lauf;

    .line 32
    iput-object p4, p0, Lalr;->e:Lahi;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;)Lals;
    .locals 5

    .prologue
    .line 38
    iget-object v0, p0, Lalr;->b:Landroid/view/LayoutInflater;

    .line 39
    invoke-static {v0, p1}, Lczf;->a(Landroid/view/LayoutInflater;Landroid/support/v7/widget/RecyclerView;)Lczf;

    move-result-object v0

    .line 40
    new-instance v1, Lalu;

    iget-object v2, p0, Lalr;->c:Lrx/o;

    iget-object v3, p0, Lalr;->d:Lauf;

    iget-object v4, p0, Lalr;->e:Lahi;

    invoke-direct {v1, v0, v2, v3, v4}, Lalu;-><init>(Lczf;Lrx/o;Lauf;Lahi;)V

    return-object v1
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)Lals;
    .locals 5

    .prologue
    .line 47
    iget-object v0, p0, Lalr;->b:Landroid/view/LayoutInflater;

    .line 48
    invoke-static {v0, p1}, Lczf;->b(Landroid/view/LayoutInflater;Landroid/support/v7/widget/RecyclerView;)Lczf;

    move-result-object v0

    .line 49
    new-instance v1, Lalu;

    iget-object v2, p0, Lalr;->c:Lrx/o;

    iget-object v3, p0, Lalr;->d:Lauf;

    iget-object v4, p0, Lalr;->e:Lahi;

    invoke-direct {v1, v0, v2, v3, v4}, Lalu;-><init>(Lczf;Lrx/o;Lauf;Lahi;)V

    return-object v1
.end method
