.class public Lcom/twitter/app/common/list/aa;
.super Lcom/twitter/app/common/inject/v;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Lcvt",
        "<TT;>;>",
        "Lcom/twitter/app/common/inject/v;"
    }
.end annotation


# static fields
.field static final synthetic e:Z


# instance fields
.field public final a:Landroid/widget/ListView;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field public final d:Z

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/app/common/list/af;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/app/common/list/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/app/common/list/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/content/Context;

.field private final k:Landroid/view/View;

.field private final l:Lcom/twitter/app/common/list/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/app/common/list/aa",
            "<TT;TA;>.com/twitter/app/common/list/ae;"
        }
    .end annotation
.end field

.field private final m:Lcom/twitter/app/common/list/an;

.field private n:Lcvt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private o:Lcom/twitter/refresh/widget/j;

.field private p:Lcom/twitter/app/common/list/ai;

.field private q:Lcom/twitter/android/util/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/twitter/app/common/list/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/common/list/aa;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/twitter/app/common/list/aj;)V
    .locals 10

    .prologue
    const v5, 0x1020004

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 87
    invoke-direct {p0}, Lcom/twitter/app/common/inject/v;-><init>()V

    .line 63
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/list/aa;->f:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/list/aa;->g:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/list/aa;->h:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/list/aa;->i:Ljava/util/Set;

    .line 88
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/aa;->j:Landroid/content/Context;

    .line 90
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->e()I

    move-result v0

    invoke-virtual {p1, v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 91
    invoke-virtual {p0, v3}, Lcom/twitter/app/common/list/aa;->a(Landroid/view/View;)V

    .line 93
    const v0, 0x7f130428

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 94
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->g()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_6

    const v1, 0x102000a

    .line 95
    :goto_0
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->f()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 100
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 101
    iput-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 103
    const v1, 0x7f13040c

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 104
    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->h()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 106
    invoke-virtual {v1, v5}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 107
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 109
    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 110
    if-eqz v4, :cond_7

    .line 111
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 113
    const v1, 0x7f130045

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 114
    if-eqz v5, :cond_3

    .line 115
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->b()I

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const v1, 0x7f13002b

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->b()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 121
    :cond_2
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->c()I

    move-result v1

    if-lez v1, :cond_3

    .line 122
    const v1, 0x7f13002a

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->c()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 128
    :cond_3
    iput-object v5, p0, Lcom/twitter/app/common/list/aa;->k:Landroid/view/View;

    .line 132
    :goto_1
    iput-object v4, p0, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    .line 133
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->n()Lcom/twitter/app/common/list/an;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/common/list/aa;->m:Lcom/twitter/app/common/list/an;

    .line 135
    const v1, 0x7f130046

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/app/common/list/aa;->c:Landroid/view/View;

    .line 137
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->i()Z

    move-result v1

    if-nez v1, :cond_4

    .line 138
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v8, v1, v8, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 139
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 142
    :cond_4
    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 143
    new-instance v1, Lcom/twitter/app/common/list/am;

    invoke-direct {v1, p0, v7}, Lcom/twitter/app/common/list/am;-><init>(Lcom/twitter/app/common/list/aa;Lcom/twitter/app/common/list/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 144
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 145
    new-instance v1, Lcom/twitter/app/common/list/ab;

    invoke-direct {v1, p0}, Lcom/twitter/app/common/list/ab;-><init>(Lcom/twitter/app/common/list/aa;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    new-instance v1, Lcom/twitter/app/common/list/ac;

    invoke-direct {v1, p0, v0}, Lcom/twitter/app/common/list/ac;-><init>(Lcom/twitter/app/common/list/aa;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 166
    instance-of v1, v0, Lcom/twitter/refresh/widget/RefreshableListView;

    if-eqz v1, :cond_9

    move-object v1, v0

    .line 167
    check-cast v1, Lcom/twitter/refresh/widget/RefreshableListView;

    .line 168
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->m()Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/app/common/list/aa;->d:Z

    .line 169
    iget-boolean v2, p0, Lcom/twitter/app/common/list/aa;->d:Z

    if-eqz v2, :cond_8

    .line 170
    new-instance v2, Lcom/twitter/app/common/list/ak;

    invoke-direct {v2, p0, v7}, Lcom/twitter/app/common/list/ak;-><init>(Lcom/twitter/app/common/list/aa;Lcom/twitter/app/common/list/ab;)V

    invoke-virtual {v1, v2}, Lcom/twitter/refresh/widget/RefreshableListView;->setRefreshListener(Lcom/twitter/refresh/widget/f;)V

    .line 171
    new-instance v2, Lcom/twitter/app/common/list/al;

    invoke-direct {v2, p0, v7}, Lcom/twitter/app/common/list/al;-><init>(Lcom/twitter/app/common/list/aa;Lcom/twitter/app/common/list/ab;)V

    invoke-virtual {v1, v2}, Lcom/twitter/refresh/widget/RefreshableListView;->setVisibilityListener(Lcom/twitter/refresh/widget/j;)V

    .line 172
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/twitter/refresh/widget/RefreshableListView;->setOverScrollMode(I)V

    .line 177
    :goto_2
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->k()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/twitter/app/common/list/aa;->a(I)V

    .line 182
    :goto_3
    const-string/jumbo v1, "home_timeline_scroll_framerate_enabled"

    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 183
    new-instance v1, Lcom/twitter/app/common/list/ae;

    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/twitter/app/common/list/ae;-><init>(Lcom/twitter/app/common/list/aa;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/twitter/app/common/list/aa;->l:Lcom/twitter/app/common/list/ae;

    .line 184
    iget-object v1, p0, Lcom/twitter/app/common/list/aa;->l:Lcom/twitter/app/common/list/ae;

    invoke-virtual {p0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/ah;)V

    .line 189
    :goto_4
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->l()I

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 191
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v3

    .line 192
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->l()I

    move-result v5

    add-int/2addr v4, v5

    .line 191
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 196
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/app/common/list/aa;->l()V

    .line 197
    return-void

    .line 94
    :cond_6
    invoke-virtual {p2}, Lcom/twitter/app/common/list/aj;->g()I

    move-result v1

    goto/16 :goto_0

    .line 130
    :cond_7
    iput-object v7, p0, Lcom/twitter/app/common/list/aa;->k:Landroid/view/View;

    goto/16 :goto_1

    .line 174
    :cond_8
    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    goto :goto_2

    .line 179
    :cond_9
    iput-boolean v8, p0, Lcom/twitter/app/common/list/aa;->d:Z

    goto :goto_3

    .line 186
    :cond_a
    iput-object v7, p0, Lcom/twitter/app/common/list/aa;->l:Lcom/twitter/app/common/list/ae;

    goto :goto_4
.end method

.method static synthetic a(Lcom/twitter/app/common/list/aa;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->h:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/app/common/list/aa;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->i:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/app/common/list/aa;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/app/common/list/aa;)Lcom/twitter/refresh/widget/j;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->o:Lcom/twitter/refresh/widget/j;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/app/common/list/aa;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/app/common/list/aa;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->g:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 295
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    .line 296
    if-eqz v0, :cond_0

    .line 297
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 299
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 428
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->p:Lcom/twitter/app/common/list/ai;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->p:Lcom/twitter/app/common/list/ai;

    invoke-interface {v0, p1, p2}, Lcom/twitter/app/common/list/ai;->a(II)V

    .line 431
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method

.method public a(Lcmf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/twitter/app/common/list/aa;->g()Lcvt;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvt;

    invoke-virtual {v0, p1}, Lcvt;->a(Lcmf;)Lcmf;

    .line 266
    if-nez p1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/twitter/app/common/list/aa;->l()V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/common/list/aa;->m()V

    goto :goto_0
.end method

.method public final a(Lcom/twitter/app/common/list/af;)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method public final a(Lcom/twitter/app/common/list/ag;)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public final a(Lcom/twitter/app/common/list/ah;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method

.method public a(Lcom/twitter/app/common/list/ai;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/twitter/app/common/list/aa;->p:Lcom/twitter/app/common/list/ai;

    .line 417
    return-void
.end method

.method public a(Lcom/twitter/refresh/widget/j;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/twitter/app/common/list/aa;->o:Lcom/twitter/refresh/widget/j;

    .line 381
    return-void
.end method

.method public final a(Lcvt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0, p1, p1}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    .line 244
    return-void
.end method

.method public final a(Lcvt;Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/twitter/app/common/list/aa;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The adapter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    iput-object p1, p0, Lcom/twitter/app/common/list/aa;->n:Lcvt;

    .line 257
    return-void
.end method

.method public final a(Z)Z
    .locals 2

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/twitter/app/common/list/aa;->d:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/refresh/widget/RefreshableListView;

    .line 355
    invoke-virtual {v0}, Lcom/twitter/refresh/widget/RefreshableListView;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/twitter/app/common/list/aa;->b(I)I

    .line 357
    invoke-virtual {v0, p1}, Lcom/twitter/refresh/widget/RefreshableListView;->a(Z)Z

    move-result v0

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aM_()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->l:Lcom/twitter/app/common/list/ae;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->l:Lcom/twitter/app/common/list/ae;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/ae;->a()V

    .line 204
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/inject/v;->aM_()V

    .line 205
    return-void
.end method

.method public as_()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->q:Lcom/twitter/android/util/ad;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->q:Lcom/twitter/android/util/ad;

    invoke-virtual {v0}, Lcom/twitter/android/util/ad;->a()V

    .line 212
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/inject/v;->as_()V

    .line 213
    return-void
.end method

.method public final b(I)I
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/twitter/app/common/list/aa;->s()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/twitter/library/util/al;->b:Z

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->q:Lcom/twitter/android/util/ad;

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/util/ad;->a(Landroid/content/Context;)Lcom/twitter/android/util/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/aa;->q:Lcom/twitter/android/util/ad;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->q:Lcom/twitter/android/util/ad;

    invoke-virtual {v0, p1}, Lcom/twitter/android/util/ad;->a(I)I

    move-result v0

    .line 338
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->n:Lcvt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcvt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/twitter/app/common/list/aa;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The list adapter has not been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    sget-boolean v0, Lcom/twitter/app/common/list/aa;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->n:Lcvt;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->n:Lcvt;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/twitter/app/common/list/aa;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/common/list/aa;->g()Lcvt;

    move-result-object v0

    invoke-virtual {v0}, Lcvt;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    iput-object v1, p0, Lcom/twitter/app/common/list/aa;->n:Lcvt;

    .line 286
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 287
    return-void
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final l()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_1
    return-void
.end method

.method public final m()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 317
    invoke-virtual {p0}, Lcom/twitter/app/common/list/aa;->i()Z

    move-result v0

    .line 318
    if-nez v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 322
    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method final n()V
    .locals 2

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/twitter/app/common/list/aa;->d:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/refresh/widget/RefreshableListView;

    .line 345
    invoke-virtual {v0}, Lcom/twitter/refresh/widget/RefreshableListView;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/twitter/refresh/widget/RefreshableListView;->a()V

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/app/common/list/aa;->b(I)I

    .line 350
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/twitter/app/common/list/aa;->d:Z

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/refresh/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/refresh/widget/RefreshableListView;->d()V

    .line 367
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/twitter/app/common/list/aa;->d:Z

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/refresh/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/refresh/widget/RefreshableListView;->e()V

    .line 373
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/refresh/widget/k;

    .line 389
    invoke-interface {v0}, Lcom/twitter/refresh/widget/k;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/twitter/app/common/list/aa;->v()V

    .line 393
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/ah;

    .line 408
    invoke-interface {v0, p0}, Lcom/twitter/app/common/list/ah;->a(Lcom/twitter/app/common/list/aa;)V

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method public w()Lcom/twitter/refresh/widget/a;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 439
    iget-object v1, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 440
    iget-object v1, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 444
    if-lt v2, v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 454
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    move v3, v0

    .line 458
    :goto_1
    if-ltz v2, :cond_3

    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 459
    :goto_2
    iget-object v4, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    .line 460
    :goto_3
    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/twitter/app/common/list/aa;->m:Lcom/twitter/app/common/list/an;

    iget-object v5, v5, Lcom/twitter/app/common/list/an;->c:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 461
    add-int/lit8 v2, v2, 0x1

    .line 462
    iget-object v0, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    goto :goto_3

    .line 447
    :cond_0
    iget-object v3, p0, Lcom/twitter/app/common/list/aa;->m:Lcom/twitter/app/common/list/an;

    iget-boolean v3, v3, Lcom/twitter/app/common/list/an;->b:Z

    if-eqz v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    sub-int v2, v1, v2

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move v7, v1

    move-object v1, v2

    move v2, v7

    goto :goto_0

    .line 451
    :cond_1
    const/4 v2, -0x1

    .line 452
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v3, v0

    .line 454
    goto :goto_1

    .line 458
    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 466
    :cond_4
    new-instance v4, Lcom/twitter/refresh/widget/a;

    invoke-direct {v4, v2, v0, v1, v3}, Lcom/twitter/refresh/widget/a;-><init>(IJI)V

    return-object v4
.end method
