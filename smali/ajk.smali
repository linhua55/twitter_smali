.class public Lajk;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lakf;

.field private final b:Lcom/twitter/library/widget/TightTextView;


# direct methods
.method public constructor <init>(Lakf;)V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lajk;->a:Lakf;

    .line 21
    invoke-virtual {p1}, Lakf;->e()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f130420

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 22
    const v1, 0x7f0401e5

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 23
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 24
    const v0, 0x7f1304d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020284

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    const v0, 0x7f1304d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/TightTextView;

    iput-object v0, p0, Lajk;->b:Lcom/twitter/library/widget/TightTextView;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lajk;->b:Lcom/twitter/library/widget/TightTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/TightTextView;->setVisibility(I)V

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lajk;->b:Lcom/twitter/library/widget/TightTextView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/TightTextView;->setText(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lajk;->b:Lcom/twitter/library/widget/TightTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/TightTextView;->setVisibility(I)V

    .line 31
    return-void
.end method

.method public b()Lakf;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lajk;->a:Lakf;

    return-object v0
.end method
