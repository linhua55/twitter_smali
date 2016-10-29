.class Lcyq;
.super Landroid/support/v7/util/SortedList$Callback;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/util/SortedList$Callback",
        "<",
        "Lcym;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcyn;


# direct methods
.method private constructor <init>(Lcyn;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcyq;->a:Lcyn;

    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcyn;Lcyo;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcyq;-><init>(Lcyn;)V

    return-void
.end method


# virtual methods
.method public a(Lcym;Lcym;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 64
    invoke-virtual {p1}, Lcym;->c()I

    move-result v2

    invoke-virtual {p2}, Lcym;->c()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcym;->e()I

    move-result v2

    invoke-virtual {p2}, Lcym;->e()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 65
    const/4 v0, 0x0

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcym;->c()I

    move-result v2

    invoke-virtual {p2}, Lcym;->c()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 70
    invoke-virtual {p1}, Lcym;->c()I

    move-result v2

    invoke-virtual {p2}, Lcym;->c()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p1}, Lcym;->e()I

    move-result v2

    invoke-virtual {p2}, Lcym;->e()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lcym;

    check-cast p2, Lcym;

    invoke-virtual {p0, p1, p2}, Lcyq;->b(Lcym;Lcym;)Z

    move-result v0

    return v0
.end method

.method public synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lcym;

    check-cast p2, Lcym;

    invoke-virtual {p0, p1, p2}, Lcyq;->c(Lcym;Lcym;)Z

    move-result v0

    return v0
.end method

.method public b(Lcym;Lcym;)Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p1, p2}, Lcym;->a(Lcym;)Z

    move-result v0

    return v0
.end method

.method public c(Lcym;Lcym;)Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p1, p2}, Lcym;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lcym;

    check-cast p2, Lcym;

    invoke-virtual {p0, p1, p2}, Lcyq;->a(Lcym;Lcym;)I

    move-result v0

    return v0
.end method

.method public onChanged(II)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onInserted(II)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onMoved(II)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onRemoved(II)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
