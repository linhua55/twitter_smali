.class public Lcyn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcza;


# instance fields
.field private final a:Landroid/support/v7/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList",
            "<",
            "Lcym;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcza;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/support/v7/util/SortedList;

    const-class v1, Lcym;

    new-instance v2, Lcyq;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcyq;-><init>(Lcyn;Lcyo;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V

    iput-object v0, p0, Lcyn;->a:Landroid/support/v7/util/SortedList;

    return-void
.end method


# virtual methods
.method public a(I)Lcym;
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcyn;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v2

    .line 51
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 52
    iget-object v0, p0, Lcyn;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, v1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcym;

    .line 53
    invoke-virtual {v0}, Lcym;->a()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 57
    :goto_1
    return-object v0

    .line 51
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcyn;->b:Lcza;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcyn;->b:Lcza;

    invoke-interface {v0}, Lcza;->a()V

    .line 41
    :cond_0
    return-void
.end method

.method public a(Lcza;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcyn;->b:Lcza;

    .line 19
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcym;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 27
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 28
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcym;

    .line 29
    invoke-virtual {v0, p0}, Lcym;->a(Lcza;)V

    .line 30
    iget-object v3, p0, Lcyn;->a:Landroid/support/v7/util/SortedList;

    invoke-virtual {v3, v0}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    .line 27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcyn;->a()V

    goto :goto_0
.end method

.method public b()Landroid/support/v7/util/SortedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/util/SortedList",
            "<",
            "Lcym;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcyn;->a:Landroid/support/v7/util/SortedList;

    return-object v0
.end method
