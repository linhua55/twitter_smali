.class public abstract Lcom/twitter/android/card/ab;
.super Lcom/twitter/library/card/au;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/aa;
.implements Lcom/twitter/library/card/ak;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J

.field private c:J

.field protected final q:Landroid/content/Context;

.field protected final r:Lcom/twitter/android/card/i;

.field protected final s:Lcom/twitter/android/card/d;

.field protected t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field protected u:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field protected v:Lcom/twitter/android/card/CardActionHelper;

.field protected w:Lcom/twitter/library/card/CardContext;

.field protected x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

.field protected y:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V
    .locals 5

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/twitter/library/card/au;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/card/ab;->a:Ljava/lang/ref/WeakReference;

    .line 65
    iput-object p2, p0, Lcom/twitter/android/card/ab;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/ab;->q:Landroid/content/Context;

    .line 67
    iput-object p4, p0, Lcom/twitter/android/card/ab;->s:Lcom/twitter/android/card/d;

    .line 68
    iput-object p3, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    .line 69
    iget-object v0, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/card/ab;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 70
    new-instance v0, Lcom/twitter/android/card/CardActionHelper;

    iget-object v1, p0, Lcom/twitter/android/card/ab;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/card/ab;->s:Lcom/twitter/android/card/d;

    iget-object v3, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    invoke-virtual {p0}, Lcom/twitter/android/card/ab;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/card/CardActionHelper;-><init>(Landroid/content/Context;Lcom/twitter/android/card/d;Lcom/twitter/android/card/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/card/ab;->v:Lcom/twitter/android/card/CardActionHelper;

    .line 71
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/card/ab;->b:J

    .line 72
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/twitter/android/card/ab;->n()Lcom/twitter/library/card/ai;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    iget-wide v2, p0, Lcom/twitter/android/card/ab;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ai;->b(JLjava/lang/Object;)V

    .line 98
    :cond_0
    invoke-static {}, Lcom/twitter/library/card/z;->a()Lcom/twitter/library/card/z;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/card/ab;->c:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/z;->b(JLjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/card/ab;->a(JLcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 116
    return-void
.end method

.method public a(JLclj;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public a(JLcom/twitter/library/card/CardContext;)V
    .locals 1

    .prologue
    .line 103
    iput-object p3, p0, Lcom/twitter/android/card/ab;->w:Lcom/twitter/library/card/CardContext;

    .line 104
    iget-object v0, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    invoke-interface {v0, p3}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/card/CardContext;)V

    .line 105
    return-void
.end method

.method public a(JLcom/twitter/library/scribe/NativeCardUserAction;)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "profile_click"

    invoke-virtual {p0}, Lcom/twitter/android/card/ab;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/twitter/android/card/i;->e(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 120
    iget-object v0, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->d:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1, p3}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 121
    iget-object v1, p0, Lcom/twitter/android/card/ab;->s:Lcom/twitter/android/card/d;

    iget-object v2, p0, Lcom/twitter/android/card/ab;->w:Lcom/twitter/library/card/CardContext;

    iget-object v0, p0, Lcom/twitter/android/card/ab;->u:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ab;->u:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    :goto_0
    invoke-interface {v1, p1, p2, v2, v0}, Lcom/twitter/android/card/d;->a(JLcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 123
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/ab;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    goto :goto_0
.end method

.method public a(Lcln;)V
    .locals 2

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/card/ab;->a(Ljava/util/ArrayList;I)V

    .line 131
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/android/card/CallToAction;Lclm;)V
    .locals 6

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/twitter/android/card/ab;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/card/CallToAction;->setScribeElement(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/twitter/android/card/ab;->s:Lcom/twitter/android/card/d;

    invoke-virtual {p1, v0}, Lcom/twitter/android/card/CallToAction;->setCardActionHandler(Lcom/twitter/android/card/d;)V

    .line 228
    iget-object v0, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    invoke-virtual {p1, v0}, Lcom/twitter/android/card/CallToAction;->setCardLogger(Lcom/twitter/android/card/i;)V

    .line 229
    const-string/jumbo v0, "card_url"

    invoke-static {v0, p2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 230
    const-string/jumbo v0, "app_url"

    const-string/jumbo v1, "app_url_resolved"

    invoke-static {v0, v1, p2}, Lcom/twitter/library/card/e;->a(Ljava/lang/String;Ljava/lang/String;Lclm;)Lcom/twitter/library/card/e;

    move-result-object v1

    .line 232
    const-string/jumbo v0, "app_id"

    invoke-static {v0, p2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v2

    .line 233
    const-string/jumbo v0, "app_name"

    invoke-static {v0, p2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v3

    .line 234
    const-string/jumbo v0, "domain"

    invoke-static {v0, p2}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    .line 235
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/card/CallToAction;->a(Lcom/twitter/library/card/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 76
    iget-wide v0, p1, Lcom/twitter/library/card/av;->a:J

    iput-wide v0, p0, Lcom/twitter/android/card/ab;->c:J

    .line 77
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lcom/twitter/android/card/ab;->y:J

    .line 79
    const-string/jumbo v0, "params_extra_scribe_association"

    const-class v1, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/card/av;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/card/ab;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 81
    iget-object v0, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/card/ab;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 82
    const-string/jumbo v0, "params_extra_source_scribe_association"

    const-class v1, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/card/av;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/card/ab;->u:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 85
    invoke-static {}, Lcom/twitter/library/card/z;->a()Lcom/twitter/library/card/z;

    move-result-object v0

    iget-wide v2, p1, Lcom/twitter/library/card/av;->a:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/z;->a(JLjava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/twitter/android/card/ab;->n()Lcom/twitter/library/card/ai;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    iget-wide v2, p0, Lcom/twitter/android/card/ab;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ai;->a(JLjava/lang/Object;)V

    .line 90
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/twitter/android/card/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 184
    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/card/ab;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 189
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 191
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/twitter/android/card/ac;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/twitter/android/card/ac;-><init>(Lcom/twitter/android/card/ab;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "click"

    invoke-virtual {p0}, Lcom/twitter/android/card/ab;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/twitter/android/card/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->p:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 165
    invoke-static {p2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p3}, Lcom/twitter/library/util/an;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v2

    move-object v2, p2

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/card/ab;->s:Lcom/twitter/android/card/d;

    iget-object v6, p0, Lcom/twitter/android/card/ab;->w:Lcom/twitter/library/card/CardContext;

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v6}, Lcom/twitter/android/card/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/twitter/library/card/CardContext;)V

    .line 175
    return-void

    :cond_0
    move-object v1, p1

    .line 171
    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcln;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcln;

    .line 143
    if-eqz v0, :cond_0

    .line 144
    new-instance v3, Lcom/twitter/model/card/property/ImageSpec;

    iget v4, v0, Lcln;->b:I

    int-to-float v4, v4

    iget v5, v0, Lcln;->c:I

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/twitter/model/card/property/ImageSpec;-><init>(FF)V

    .line 145
    iget-object v0, v0, Lcln;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    const-string/jumbo v2, "click"

    invoke-virtual {p0}, Lcom/twitter/android/card/ab;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/twitter/android/card/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->p:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v2}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 152
    iget-object v0, p0, Lcom/twitter/android/card/ab;->s:Lcom/twitter/android/card/d;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/twitter/android/card/ab;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/android/card/d;->a(Ljava/util/ArrayList;ILcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 154
    :cond_2
    return-void
.end method

.method protected b(JLclj;)V
    .locals 9

    .prologue
    .line 244
    iget-object v0, p0, Lcom/twitter/android/card/ab;->w:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/ab;->w:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->c()J

    move-result-wide v4

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/card/ab;->n()Lcom/twitter/library/card/ai;

    move-result-object v1

    move-wide v2, p1

    move-object v6, p3

    move-object v7, p0

    .line 246
    invoke-virtual/range {v1 .. v7}, Lcom/twitter/library/card/ai;->a(JJLclj;Lcom/twitter/library/card/ak;)V

    .line 247
    return-void

    .line 244
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public l()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/android/card/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/twitter/android/card/ab;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-static {v0}, Lcom/twitter/android/card/l;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected n()Lcom/twitter/library/card/ai;
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/twitter/android/card/ab;->q:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/android/card/ab;->b:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/card/ai;->a(Landroid/content/Context;J)Lcom/twitter/library/card/ai;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/twitter/android/card/CardActionHelper;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/twitter/android/card/ab;->v:Lcom/twitter/android/card/CardActionHelper;

    return-object v0
.end method
