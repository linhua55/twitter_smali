.class public Lcom/twitter/android/dm/widget/SentMessageBylineView;
.super Lcom/twitter/android/dm/widget/MessageBylineView;
.source "Twttr"


# instance fields
.field b:Z

.field c:Z

.field final d:Landroid/widget/TextView;

.field private final e:Lcom/twitter/android/dm/widget/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/dm/widget/j;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/twitter/android/dm/widget/MessageBylineView;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->e:Lcom/twitter/android/dm/widget/j;

    .line 28
    const v0, 0x7f1302f0

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->d:Landroid/widget/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public a(Lcom/twitter/android/dm/widget/SentMessageBylineView;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->e:Lcom/twitter/android/dm/widget/j;

    invoke-interface {v0, p1}, Lcom/twitter/android/dm/widget/j;->a(Lcom/twitter/android/dm/widget/SentMessageBylineView;)V

    .line 60
    return-void
.end method

.method public a(ZZ)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->b:Z

    .line 34
    iput-boolean p2, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->c:Z

    .line 35
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->c:Z

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->b:Z

    return v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method getLayoutResId()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 98
    const v0, 0x7f0400c7

    return v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setDraftStatusColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    return-void
.end method

.method public setDraftStatusText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    return-void
.end method

.method public setTimestampText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/twitter/android/dm/widget/SentMessageBylineView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    return-void
.end method
