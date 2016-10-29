.class public Ltv/periscope/android/ui/user/UserPickerSheet;
.super Landroid/widget/RelativeLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ltv/periscope/android/ui/user/g;
.implements Ltv/periscope/android/ui/user/p;


# static fields
.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ltv/periscope/android/data/g;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private j:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private k:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private l:Z

.field private m:Ltv/periscope/android/ui/user/m;

.field private n:Ltv/periscope/android/ui/user/e;

.field private o:Landroid/support/v7/widget/RecyclerView;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Ltv/periscope/android/view/am;

.field private t:Ltv/periscope/android/view/am;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltv/periscope/android/ui/user/UserPickerSheet;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/user/UserPickerSheet;->a(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/user/UserPickerSheet;->a(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/user/UserPickerSheet;->a(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/user/UserPickerSheet;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 388
    if-nez p1, :cond_0

    .line 389
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-boolean v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->l:Z

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->j:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->i:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__user_picker_activity:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 92
    sget v0, Ltv/periscope/android/library/l;->title:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/user/UserPickerSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->c:Landroid/widget/TextView;

    .line 93
    sget v0, Ltv/periscope/android/library/l;->description:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/user/UserPickerSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->d:Landroid/widget/TextView;

    .line 94
    sget v0, Ltv/periscope/android/library/l;->search_query:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/user/UserPickerSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    .line 96
    sget v0, Ltv/periscope/android/library/l;->list:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/user/UserPickerSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->o:Landroid/support/v7/widget/RecyclerView;

    .line 97
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 99
    sget v0, Ltv/periscope/android/library/l;->search_or_close:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/user/UserPickerSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->f:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v0, Ltv/periscope/android/library/l;->close_or_back:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/user/UserPickerSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->g:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget v0, Ltv/periscope/android/library/l;->done_count:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/user/UserPickerSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->h:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltv/periscope/android/util/w;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->r:I

    .line 108
    new-instance v0, Ltv/periscope/android/ui/user/j;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/user/j;-><init>(Ltv/periscope/android/ui/user/UserPickerSheet;)V

    iput-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->s:Ltv/periscope/android/view/am;

    .line 123
    new-instance v0, Ltv/periscope/android/ui/user/k;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/user/k;-><init>(Ltv/periscope/android/ui/user/UserPickerSheet;)V

    iput-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->t:Ltv/periscope/android/view/am;

    .line 136
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/user/UserPickerSheet;->setVisibility(I)V

    .line 139
    invoke-super {p0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method private a(Ltv/periscope/android/api/PsUser;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->n:Ltv/periscope/android/ui/user/e;

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/user/e;->a(Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->i()V

    .line 385
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/user/UserPickerSheet;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->q:Z

    return p1
.end method

.method static synthetic b(Ltv/periscope/android/ui/user/UserPickerSheet;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->g()V

    return-void
.end method

.method static synthetic b(Ltv/periscope/android/ui/user/UserPickerSheet;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->p:Z

    return p1
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 185
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 190
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->g:Landroid/widget/ImageView;

    sget v1, Ltv/periscope/android/library/k;->ps__ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->f:Landroid/widget/ImageView;

    sget v1, Ltv/periscope/android/library/k;->ps__ic_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    invoke-static {v0}, Ltv/periscope/android/util/l;->b(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 201
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->g:Landroid/widget/ImageView;

    sget v1, Ltv/periscope/android/library/k;->ps__ic_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->f:Landroid/widget/ImageView;

    sget v1, Ltv/periscope/android/library/k;->abc_ic_search_api_mtrl_alpha:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    invoke-static {v0}, Ltv/periscope/android/util/l;->a(Landroid/view/View;)V

    .line 204
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 296
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->k:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/p;->ps__dialog_btn_no:I

    const/4 v2, 0x0

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/p;->ps__dialog_btn_yes:I

    new-instance v2, Ltv/periscope/android/ui/user/l;

    invoke-direct {v2, p0}, Ltv/periscope/android/ui/user/l;-><init>(Ltv/periscope/android/ui/user/UserPickerSheet;)V

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 306
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 310
    invoke-virtual {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->b()V

    .line 311
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->m:Ltv/periscope/android/ui/user/m;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->m:Ltv/periscope/android/ui/user/m;

    sget-object v1, Ltv/periscope/android/ui/user/UserPickerSheet;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ltv/periscope/android/ui/user/m;->a(Ljava/util/ArrayList;Z)V

    .line 314
    :cond_0
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->h()V

    .line 315
    return-void
.end method

.method private getCheckedUserIds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->n:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0}, Ltv/periscope/android/ui/user/e;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Ltv/periscope/android/ui/user/UserPickerSheet;->b:Ljava/util/ArrayList;

    .line 343
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->n:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v1}, Ltv/periscope/android/ui/user/e;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 318
    iget-boolean v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->q:Z

    if-eqz v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 322
    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->r:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/view/r;->a(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 324
    iget-object v1, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->t:Ltv/periscope/android/view/am;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 327
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 328
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->n:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0}, Ltv/periscope/android/ui/user/e;->notifyDataSetChanged()V

    .line 365
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->n:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0}, Ltv/periscope/android/ui/user/e;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/user/UserPickerSheet;->a(I)V

    .line 369
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->e:Landroid/widget/EditText;

    invoke-static {v0}, Ltv/periscope/android/util/l;->a(Landroid/view/View;)V

    .line 370
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->k:I

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->f()V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->g()V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ltv/periscope/android/api/PsUser;)V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0, p2}, Ltv/periscope/android/ui/user/UserPickerSheet;->a(Ltv/periscope/android/api/PsUser;)V

    .line 351
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->n:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0}, Ltv/periscope/android/ui/user/e;->c()V

    .line 360
    :goto_0
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->i()V

    .line 361
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->n:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0}, Ltv/periscope/android/ui/user/e;->d()V

    goto :goto_0
.end method

.method public a(ZLtv/periscope/android/api/PsUser;)V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0, p2}, Ltv/periscope/android/ui/user/UserPickerSheet;->a(Ltv/periscope/android/api/PsUser;)V

    .line 380
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->n:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0}, Ltv/periscope/android/ui/user/e;->d()V

    .line 374
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->i()V

    .line 375
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 159
    sget v1, Ltv/periscope/android/library/l;->close_or_back:I

    if-ne v0, v1, :cond_2

    .line 160
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->e()V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->a()V

    goto :goto_0

    .line 165
    :cond_2
    sget v1, Ltv/periscope/android/library/l;->done_count:I

    if-ne v0, v1, :cond_5

    .line 166
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->m:Ltv/periscope/android/ui/user/m;

    if-eqz v0, :cond_3

    .line 167
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->getCheckedUserIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 168
    iget-object v2, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->m:Ltv/periscope/android/ui/user/m;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->n:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v3}, Ltv/periscope/android/ui/user/e;->getItemCount()I

    move-result v3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v1, v0}, Ltv/periscope/android/ui/user/m;->a(Ljava/util/ArrayList;Z)V

    .line 170
    :cond_3
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->h()V

    goto :goto_0

    .line 168
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 171
    :cond_5
    sget v1, Ltv/periscope/android/library/l;->search_or_close:I

    if-ne v0, v1, :cond_0

    .line 172
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 173
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->e()V

    goto :goto_0

    .line 175
    :cond_6
    invoke-direct {p0}, Ltv/periscope/android/ui/user/UserPickerSheet;->d()V

    goto :goto_0
.end method

.method public setUserType(Ltv/periscope/android/data/UserType;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->a:Ltv/periscope/android/data/g;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Ltv/periscope/android/ui/user/UserPickerSheet;->a:Ltv/periscope/android/data/g;

    invoke-virtual {v0, p1}, Ltv/periscope/android/data/g;->a(Ltv/periscope/android/data/UserType;)V

    .line 154
    :cond_0
    return-void
.end method
