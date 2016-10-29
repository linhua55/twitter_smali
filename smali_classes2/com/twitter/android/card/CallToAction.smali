.class public Lcom/twitter/android/card/CallToAction;
.super Lcom/twitter/ui/widget/TwitterButton;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/twitter/android/card/CallToAction$State;

.field private g:Lcom/twitter/library/card/CardContext;

.field private h:Ljava/lang/String;

.field private i:Lcom/twitter/android/card/d;

.field private j:Lcom/twitter/android/card/i;

.field private k:Lcom/twitter/library/card/e;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/card/CallToAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f010172

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/card/CallToAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/ui/widget/TwitterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    sget-object v0, Lcom/twitter/android/card/CallToAction$State;->a:Lcom/twitter/android/card/CallToAction$State;

    iput-object v0, p0, Lcom/twitter/android/card/CallToAction;->a:Lcom/twitter/android/card/CallToAction$State;

    .line 56
    invoke-virtual {p0, p0}, Lcom/twitter/android/card/CallToAction;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 163
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->j:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "open_link"

    iget-object v2, p0, Lcom/twitter/android/card/CallToAction;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->g:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->g:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/twitter/android/card/CallToAction;->j:Lcom/twitter/android/card/i;

    invoke-interface {v1, p1}, Lcom/twitter/android/card/i;->b(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/twitter/android/card/CallToAction;->i:Lcom/twitter/android/card/d;

    iget-object v2, p0, Lcom/twitter/android/card/CallToAction;->g:Lcom/twitter/library/card/CardContext;

    invoke-interface {v1, v0, v2, p1}, Lcom/twitter/android/card/d;->a(Lcom/twitter/library/client/Session;Lcom/twitter/library/card/CardContext;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->i:Lcom/twitter/android/card/d;

    iget-object v1, p0, Lcom/twitter/android/card/CallToAction;->j:Lcom/twitter/android/card/i;

    invoke-interface {v1}, Lcom/twitter/android/card/i;->a()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/card/CallToAction;->g:Lcom/twitter/library/card/CardContext;

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/android/card/d;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/card/CardContext;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->j:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "open_app"

    iget-object v2, p0, Lcom/twitter/android/card/CallToAction;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->j:Lcom/twitter/android/card/i;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->q:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 146
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->i:Lcom/twitter/android/card/d;

    iget-object v1, p0, Lcom/twitter/android/card/CallToAction;->k:Lcom/twitter/library/card/e;

    iget-object v2, p0, Lcom/twitter/android/card/CallToAction;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/d;->a(Lcom/twitter/library/card/e;Ljava/lang/String;)Z

    .line 147
    return-void
.end method

.method private getApp()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->j:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "install_app"

    iget-object v2, p0, Lcom/twitter/android/card/CallToAction;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->j:Lcom/twitter/android/card/i;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->r:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 152
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->i:Lcom/twitter/android/card/d;

    iget-object v1, p0, Lcom/twitter/android/card/CallToAction;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/d;->b(Ljava/lang/String;)Z

    move-result v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->j:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "open_link"

    iget-object v2, p0, Lcom/twitter/android/card/CallToAction;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    const-string/jumbo v0, "post_installed_logging_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->j:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/card/CallToAction;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/card/CallToAction;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/card/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    iput-object p1, p0, Lcom/twitter/android/card/CallToAction;->k:Lcom/twitter/library/card/e;

    .line 92
    iput-object p2, p0, Lcom/twitter/android/card/CallToAction;->l:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/twitter/android/card/CallToAction;->m:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/twitter/android/card/CallToAction;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/card/CallToAction;->i:Lcom/twitter/android/card/d;

    invoke-virtual {p1}, Lcom/twitter/library/card/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/twitter/android/card/d;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    sget-object v1, Lcom/twitter/android/card/CallToAction$State;->b:Lcom/twitter/android/card/CallToAction$State;

    iput-object v1, p0, Lcom/twitter/android/card/CallToAction;->a:Lcom/twitter/android/card/CallToAction$State;

    .line 99
    invoke-static {p3}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/card/CallToAction;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .line 102
    :cond_0
    const v1, 0x7f0a024e

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {p2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    sget-object v1, Lcom/twitter/android/card/CallToAction$State;->c:Lcom/twitter/android/card/CallToAction$State;

    iput-object v1, p0, Lcom/twitter/android/card/CallToAction;->a:Lcom/twitter/android/card/CallToAction$State;

    .line 106
    invoke-static {p3}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    const v1, 0x7f0a0249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    const v1, 0x7f0a024a

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_3
    sget-object v1, Lcom/twitter/android/card/CallToAction$State;->d:Lcom/twitter/android/card/CallToAction$State;

    iput-object v1, p0, Lcom/twitter/android/card/CallToAction;->a:Lcom/twitter/android/card/CallToAction$State;

    .line 113
    invoke-static {p4}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    const v1, 0x7f0a0264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_4
    const v1, 0x7f0a0262

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/twitter/android/card/c;->a:[I

    iget-object v1, p0, Lcom/twitter/android/card/CallToAction;->a:Lcom/twitter/android/card/CallToAction$State;

    invoke-virtual {v1}, Lcom/twitter/android/card/CallToAction$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 126
    :pswitch_0
    invoke-direct {p0}, Lcom/twitter/android/card/CallToAction;->d()V

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-direct {p0}, Lcom/twitter/android/card/CallToAction;->getApp()V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/card/CallToAction;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/card/CallToAction;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCardActionHandler(Lcom/twitter/android/card/d;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/twitter/android/card/CallToAction;->i:Lcom/twitter/android/card/d;

    .line 69
    return-void
.end method

.method public setCardContext(Lcom/twitter/library/card/CardContext;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/twitter/android/card/CallToAction;->g:Lcom/twitter/library/card/CardContext;

    .line 65
    return-void
.end method

.method public setCardLogger(Lcom/twitter/android/card/i;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/twitter/android/card/CallToAction;->j:Lcom/twitter/android/card/i;

    .line 73
    return-void
.end method

.method public setScribeElement(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/twitter/android/card/CallToAction;->h:Ljava/lang/String;

    .line 61
    return-void
.end method
