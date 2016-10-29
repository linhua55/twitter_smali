.class public Labd;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/ViewGroup;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/view/View;

.field private final l:Lcom/twitter/library/widget/TightTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Labd;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    .line 31
    iget-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    const v1, 0x7f13053c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Labd;->b:Landroid/view/ViewGroup;

    .line 32
    iget-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    const v1, 0x7f13053d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Labd;->f:Landroid/view/ViewGroup;

    .line 33
    iget-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1304af

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Labd;->c:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1304b1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Labd;->d:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    const v1, 0x7f13053b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Labd;->e:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    const v1, 0x7f130540

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Labd;->g:Landroid/view/ViewGroup;

    .line 38
    iget-object v0, p0, Labd;->g:Landroid/view/ViewGroup;

    const v1, 0x7f130541

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Labd;->h:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    const v1, 0x7f130542

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Labd;->i:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    const v1, 0x7f130543

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Labd;->j:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    const v1, 0x7f13053e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Labd;->k:Landroid/view/View;

    .line 43
    iget-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    const v1, 0x7f13053f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/TightTextView;

    iput-object v0, p0, Labd;->l:Lcom/twitter/library/widget/TightTextView;

    .line 44
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 100
    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 102
    const v0, 0x7f040224

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    const v2, 0x7f040225

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Labd;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Labd;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 53
    iget-object v0, p0, Labd;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public a(Lcdq;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 57
    iget-object v0, p0, Labd;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Labd;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Labd;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcdq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Labd;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcdq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Labd;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcdq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Labd;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcdq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget-object v0, Labe;->a:[I

    invoke-virtual {p1}, Lcdq;->f()Lcom/twitter/model/livevideo/BroadcastState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/livevideo/BroadcastState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    iget-object v0, p0, Labd;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Labd;->l:Lcom/twitter/library/widget/TightTextView;

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/TightTextView;->setVisibility(I)V

    .line 86
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Labd;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Labd;->l:Lcom/twitter/library/widget/TightTextView;

    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/TightTextView;->setVisibility(I)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Labd;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Labd;->l:Lcom/twitter/library/widget/TightTextView;

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/TightTextView;->setVisibility(I)V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Labd;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Labd;->l:Lcom/twitter/library/widget/TightTextView;

    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/TightTextView;->setVisibility(I)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Labd;->l:Lcom/twitter/library/widget/TightTextView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/TightTextView;->setText(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Labd;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Labd;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Labd;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method
