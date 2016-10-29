.class public Lvg;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/widget/DatePicker;

.field private final b:Lcom/twitter/ui/widget/TwitterSelection;

.field private final c:Lcom/twitter/ui/widget/TwitterSelection;

.field private final d:Landroid/widget/Button;

.field private final e:Lcom/twitter/ui/widget/TwitterEditText;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x7f13031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    iput-object v0, p0, Lvg;->a:Landroid/widget/DatePicker;

    .line 51
    const v0, 0x7f13031e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterSelection;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterSelection;

    iput-object v0, p0, Lvg;->b:Lcom/twitter/ui/widget/TwitterSelection;

    .line 53
    const v0, 0x7f13031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterSelection;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterSelection;

    iput-object v0, p0, Lvg;->c:Lcom/twitter/ui/widget/TwitterSelection;

    .line 55
    const v0, 0x7f130323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lvg;->d:Landroid/widget/Button;

    .line 57
    const v0, 0x7f13031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterEditText;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterEditText;

    iput-object v0, p0, Lvg;->e:Lcom/twitter/ui/widget/TwitterEditText;

    .line 59
    const v0, 0x7f130321

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvg;->f:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f130322

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lvg;->g:Landroid/view/View;

    .line 63
    return-void
.end method

.method static synthetic a(Lvg;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lvg;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lvg;)Lcom/twitter/ui/widget/TwitterEditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lvg;->e:Lcom/twitter/ui/widget/TwitterEditText;

    return-object v0
.end method

.method static synthetic c(Lvg;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lvg;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lvg;)Landroid/widget/DatePicker;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lvg;->a:Landroid/widget/DatePicker;

    return-object v0
.end method

.method static synthetic e(Lvg;)Lcom/twitter/ui/widget/TwitterSelection;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lvg;->b:Lcom/twitter/ui/widget/TwitterSelection;

    return-object v0
.end method

.method static synthetic f(Lvg;)Lcom/twitter/ui/widget/TwitterSelection;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lvg;->c:Lcom/twitter/ui/widget/TwitterSelection;

    return-object v0
.end method

.method static synthetic g(Lvg;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lvg;->g:Landroid/view/View;

    return-object v0
.end method
