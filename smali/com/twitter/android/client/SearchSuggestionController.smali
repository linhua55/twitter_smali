.class public Lcom/twitter/android/client/SearchSuggestionController;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/twitter/internal/android/widget/ag;
.implements Lcom/twitter/library/widget/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/twitter/internal/android/widget/ag;",
        "Lcom/twitter/library/widget/z;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/support/v4/app/LoaderManager;

.field private final c:Landroid/support/v4/app/FragmentManager;

.field private final d:Lcom/twitter/android/client/be;

.field private final e:Lcom/twitter/android/client/bd;

.field private final f:Lcom/twitter/android/client/bh;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/twitter/android/client/SearchSuggestionController$QueryTextUpdateReceiver;

.field private final i:Landroid/support/v4/app/FragmentActivity;

.field private final j:Lcom/twitter/library/client/bk;

.field private final k:Ljava/lang/Runnable;

.field private l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private m:Lcom/twitter/android/client/bl;

.field private n:Lcom/twitter/internal/android/widget/PopupEditText;

.field private o:Ljava/lang/String;

.field private p:Lcom/twitter/android/client/bb;

.field private q:Lbjl;

.field private r:Lcom/twitter/android/client/bf;

.field private s:Ljava/lang/String;

.field private t:[Landroid/graphics/drawable/Drawable;

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;I)V
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->g:Ljava/util/List;

    .line 98
    new-instance v0, Lcom/twitter/android/client/SearchSuggestionController$QueryTextUpdateReceiver;

    new-instance v1, Landroid/os/Handler;

    .line 99
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController$QueryTextUpdateReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->h:Lcom/twitter/android/client/SearchSuggestionController$QueryTextUpdateReceiver;

    .line 102
    new-instance v0, Lcom/twitter/android/client/ay;

    invoke-direct {v0, p0}, Lcom/twitter/android/client/ay;-><init>(Lcom/twitter/android/client/SearchSuggestionController;)V

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->k:Ljava/lang/Runnable;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->w:I

    .line 129
    iput-object p1, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    .line 130
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->j:Lcom/twitter/library/client/bk;

    .line 131
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->b:Landroid/support/v4/app/LoaderManager;

    .line 132
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->c:Landroid/support/v4/app/FragmentManager;

    .line 133
    iput p2, p0, Lcom/twitter/android/client/SearchSuggestionController;->a:I

    .line 134
    new-instance v0, Lcom/twitter/android/client/bh;

    new-instance v1, Lcom/twitter/android/client/bg;

    invoke-direct {v1, p0}, Lcom/twitter/android/client/bg;-><init>(Lcom/twitter/android/client/SearchSuggestionController;)V

    invoke-direct {v0, p1, p0, v1}, Lcom/twitter/android/client/bh;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/twitter/android/kn;)V

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->f:Lcom/twitter/android/client/bh;

    .line 136
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const-string/jumbo v1, "app"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 137
    new-instance v0, Lcom/twitter/android/client/bd;

    invoke-direct {v0, p0}, Lcom/twitter/android/client/bd;-><init>(Lcom/twitter/android/client/SearchSuggestionController;)V

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->e:Lcom/twitter/android/client/bd;

    .line 138
    new-instance v0, Lcom/twitter/android/client/be;

    invoke-direct {v0, p0}, Lcom/twitter/android/client/be;-><init>(Lcom/twitter/android/client/SearchSuggestionController;)V

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->d:Lcom/twitter/android/client/be;

    .line 139
    const v0, 0x7f0a073f

    iput v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->y:I

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/client/SearchSuggestionController;)Lcom/twitter/internal/android/widget/PopupEditText;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/client/SearchSuggestionController;Lbjl;)Z
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/twitter/android/client/SearchSuggestionController;->b(Lbjl;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/client/SearchSuggestionController;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method private b(Lbjl;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-boolean v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->u:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 256
    :goto_0
    return v0

    .line 242
    :cond_0
    invoke-static {}, Lcom/twitter/android/provider/SuggestionsProvider;->a()V

    .line 244
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/internal/android/widget/PopupEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    invoke-virtual {p1}, Lbjl;->d()Landroid/view/View;

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 247
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->h:Lcom/twitter/android/client/SearchSuggestionController$QueryTextUpdateReceiver;

    iget-object v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/twitter/android/client/SearchSuggestionController$QueryTextUpdateReceiver;->a(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController$QueryTextUpdateReceiver;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0, v2}, Lcom/twitter/android/client/SearchSuggestionController$QueryTextUpdateReceiver;->a(Landroid/widget/TextView;)Lcom/twitter/android/client/SearchSuggestionController$QueryTextUpdateReceiver;

    .line 248
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    iget-object v3, p0, Lcom/twitter/android/client/SearchSuggestionController;->h:Lcom/twitter/android/client/SearchSuggestionController$QueryTextUpdateReceiver;

    invoke-static {v0, v2, v1, v3}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;Landroid/view/View;ZLandroid/os/ResultReceiver;)V

    .line 250
    invoke-direct {p0}, Lcom/twitter/android/client/SearchSuggestionController;->j()V

    .line 251
    iput-boolean v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->u:Z

    .line 252
    invoke-virtual {p0}, Lcom/twitter/android/client/SearchSuggestionController;->a()V

    .line 253
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->r:Lcom/twitter/android/client/bf;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->r:Lcom/twitter/android/client/bf;

    invoke-interface {v0}, Lcom/twitter/android/client/bf;->z_()V

    .line 256
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/client/SearchSuggestionController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->o:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 449
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {p1}, Lcom/twitter/android/provider/SuggestionsProvider;->a(Ljava/lang/String;)Lcom/twitter/library/api/search/TwitterTypeAheadGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Lcom/twitter/library/api/search/r;

    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->j:Lcom/twitter/library/client/bk;

    .line 452
    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget v4, p0, Lcom/twitter/android/client/SearchSuggestionController;->w:I

    const/4 v5, 0x0

    const-string/jumbo v6, "search_box"

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/twitter/library/api/search/r;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;IILjava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->e:Lcom/twitter/android/client/bd;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 457
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/twitter/android/client/SearchSuggestionController;)Lcom/twitter/android/client/bb;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->p:Lcom/twitter/android/client/bb;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/client/SearchSuggestionController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->g:Ljava/util/List;

    return-object v0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->w:I

    packed-switch v0, :pswitch_data_0

    .line 400
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 397
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic f(Lcom/twitter/android/client/SearchSuggestionController;)Lcom/twitter/library/client/bk;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->j:Lcom/twitter/library/client/bk;

    return-object v0
.end method

.method private g()Z
    .locals 4

    .prologue
    .line 460
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lcom/twitter/android/SearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "com.twitter.android.action.SEARCH"

    .line 463
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "user_query"

    .line 464
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "query"

    .line 465
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "query_name"

    .line 466
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "q_source"

    const-string/jumbo v2, "typed_query"

    .line 467
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "source_association"

    iget-object v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 468
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 470
    iget-boolean v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->x:Z

    if-eqz v1, :cond_0

    .line 471
    const-string/jumbo v1, "search_type"

    invoke-direct {p0}, Lcom/twitter/android/client/SearchSuggestionController;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 475
    const/4 v0, 0x1

    .line 477
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->q:Lbjl;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjl;

    invoke-virtual {v0}, Lbjl;->d()Landroid/view/View;

    move-result-object v0

    .line 506
    instance-of v1, v0, Lcom/twitter/library/widget/SearchQueryView;

    if-eqz v1, :cond_0

    .line 507
    check-cast v0, Lcom/twitter/library/widget/SearchQueryView;

    .line 508
    invoke-virtual {v0, p0}, Lcom/twitter/library/widget/SearchQueryView;->setOnClearClickListener(Lcom/twitter/library/widget/z;)V

    .line 509
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0a00e6

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SearchQueryView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 510
    iget v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->y:I

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SearchQueryView;->setHint(I)V

    .line 511
    invoke-virtual {v0}, Lcom/twitter/library/widget/SearchQueryView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->t:[Landroid/graphics/drawable/Drawable;

    .line 513
    :cond_0
    return-void
.end method

.method private i()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 561
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->t:[Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    iget-boolean v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->v:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->t:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    :cond_0
    iget-object v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->t:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/twitter/android/client/SearchSuggestionController;->t:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/twitter/android/client/SearchSuggestionController;->t:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v6

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/twitter/internal/android/widget/PopupEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 570
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    iget-object v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->t:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/twitter/android/client/SearchSuggestionController;->t:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    iget-boolean v4, p0, Lcom/twitter/android/client/SearchSuggestionController;->v:Z

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->t:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    :cond_2
    iget-object v4, p0, Lcom/twitter/android/client/SearchSuggestionController;->t:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v6

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/twitter/internal/android/widget/PopupEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private j()V
    .locals 7

    .prologue
    .line 658
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->j:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 660
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/client/SearchSuggestionController;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, "search_box"

    const-string/jumbo v5, "typeahead"

    const-string/jumbo v6, "results"

    .line 661
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->g:Ljava/util/List;

    .line 663
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 659
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 664
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 666
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/client/SearchSuggestionController;
    .locals 0

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    iput-object p1, p0, Lcom/twitter/android/client/SearchSuggestionController;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 172
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    .line 177
    return-object p0
.end method

.method a()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->m:Lcom/twitter/android/client/bl;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->m:Lcom/twitter/android/client/bl;

    invoke-virtual {v0}, Lcom/twitter/android/client/bl;->b()V

    .line 321
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 573
    iput p1, p0, Lcom/twitter/android/client/SearchSuggestionController;->w:I

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->x:Z

    .line 575
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method a(ILandroid/database/Cursor;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 330
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 331
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 334
    :goto_0
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 336
    const/16 v5, 0xb

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 338
    new-instance v5, Landroid/content/Intent;

    iget-object v8, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    const-class v9, Lcom/twitter/android/SearchActivity;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "user_query"

    iget-object v8, p0, Lcom/twitter/android/client/SearchSuggestionController;->o:Ljava/lang/String;

    .line 340
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "query"

    .line 341
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "search_suggestion_position"

    .line 342
    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "source_association"

    iget-object v8, p0, Lcom/twitter/android/client/SearchSuggestionController;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 343
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 345
    iget-boolean v5, p0, Lcom/twitter/android/client/SearchSuggestionController;->x:Z

    if-eqz v5, :cond_2

    .line 346
    const-string/jumbo v0, "search_type"

    invoke-direct {p0}, Lcom/twitter/android/client/SearchSuggestionController;->f()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    :goto_1
    iput-object v3, p0, Lcom/twitter/android/client/SearchSuggestionController;->o:Ljava/lang/String;

    .line 355
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    .line 356
    const-string/jumbo v0, "search_suggestion_id"

    invoke-virtual {v2, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 358
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/twitter/android/ip;->a(ZLandroid/content/Intent;)V

    .line 360
    packed-switch v1, :pswitch_data_0

    .line 392
    :goto_2
    return-void

    .line 333
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 363
    :pswitch_0
    const-string/jumbo v0, "query_name"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "search_type"

    .line 364
    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 369
    :pswitch_1
    const/16 v0, 0x8

    .line 370
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 371
    const-string/jumbo v1, "query_name"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string/jumbo v1, "search_type"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 380
    :pswitch_2
    const-string/jumbo v0, "query_name"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 385
    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    const-string/jumbo v0, "search_topic"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->s:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    .line 156
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "TAG_CLEAR_RECENT_SEARCH_DIALOG"

    .line 157
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PromptDialogFragment;

    .line 158
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->s:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Lcom/twitter/android/client/bc;

    iget-object v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->s:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/client/bc;-><init>(Lcom/twitter/android/client/SearchSuggestionController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    .line 162
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->f:Lcom/twitter/android/client/bh;

    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/bh;->a(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->f:Lcom/twitter/android/client/bh;

    invoke-virtual {v0, p2}, Lcom/twitter/android/client/bh;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 276
    return-void
.end method

.method public a(Lcom/twitter/android/client/bf;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/twitter/android/client/SearchSuggestionController;->r:Lcom/twitter/android/client/bf;

    .line 670
    return-void
.end method

.method public a(Lcom/twitter/android/client/bl;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/twitter/android/client/SearchSuggestionController;->m:Lcom/twitter/android/client/bl;

    .line 150
    return-void
.end method

.method a(Lcom/twitter/internal/android/widget/PopupEditText;)V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->m:Lcom/twitter/android/client/bl;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->m:Lcom/twitter/android/client/bl;

    invoke-virtual {v0}, Lcom/twitter/android/client/bl;->a()V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/internal/android/widget/PopupEditText;->a()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/internal/android/widget/ToolBar;)V
    .locals 2

    .prologue
    .line 488
    const v0, 0x7f1307cc

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    .line 489
    new-instance v1, Lcom/twitter/android/client/ba;

    invoke-direct {v1, p0}, Lcom/twitter/android/client/ba;-><init>(Lcom/twitter/android/client/SearchSuggestionController;)V

    invoke-virtual {v0, v1}, Lbjl;->a(Lbjm;)Lbjl;

    .line 500
    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->q:Lbjl;

    .line 501
    invoke-direct {p0}, Lcom/twitter/android/client/SearchSuggestionController;->h()V

    .line 502
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 423
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/SearchSuggestionController;->c(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->b:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 425
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0, p1}, Lcom/twitter/internal/android/widget/PopupEditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/SearchSuggestionController;->a(Ljava/lang/CharSequence;)V

    .line 442
    if-eqz p2, :cond_0

    .line 443
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/PopupEditText;->setSelection(I)V

    .line 446
    :cond_0
    return-void
.end method

.method a(Lbjl;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongViewCast"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 188
    iget-boolean v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->u:Z

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return v3

    .line 191
    :cond_0
    invoke-virtual {p1}, Lbjl;->d()Landroid/view/View;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f130602

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/PopupEditText;

    .line 193
    invoke-virtual {v0, p0}, Lcom/twitter/internal/android/widget/PopupEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 194
    invoke-virtual {v0, p0}, Lcom/twitter/internal/android/widget/PopupEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 195
    invoke-virtual {v0, p0}, Lcom/twitter/internal/android/widget/PopupEditText;->setPopupEditTextListener(Lcom/twitter/internal/android/widget/ag;)V

    .line 197
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->m:Lcom/twitter/android/client/bl;

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->m:Lcom/twitter/android/client/bl;

    iget-object v4, p0, Lcom/twitter/android/client/SearchSuggestionController;->f:Lcom/twitter/android/client/bh;

    invoke-virtual {v1, v4}, Lcom/twitter/android/client/bl;->a(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->m:Lcom/twitter/android/client/bl;

    new-instance v4, Lcom/twitter/android/client/az;

    invoke-direct {v4, p0}, Lcom/twitter/android/client/az;-><init>(Lcom/twitter/android/client/SearchSuggestionController;)V

    invoke-virtual {v1, v4}, Lcom/twitter/android/client/bl;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    :goto_1
    invoke-virtual {v0, p0}, Lcom/twitter/internal/android/widget/PopupEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    .line 217
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v1}, Lcom/twitter/internal/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->c(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v1}, Lcom/twitter/internal/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->v:Z

    .line 219
    invoke-direct {p0}, Lcom/twitter/android/client/SearchSuggestionController;->i()V

    .line 220
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->b:Landroid/support/v4/app/LoaderManager;

    iget v4, p0, Lcom/twitter/android/client/SearchSuggestionController;->a:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 222
    new-instance v1, Lcom/twitter/android/client/bb;

    invoke-direct {v1}, Lcom/twitter/android/client/bb;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->p:Lcom/twitter/android/client/bb;

    .line 223
    const-string/jumbo v1, "saved_searches_ttl_hours"

    invoke-static {v1, v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v1

    int-to-long v4, v1

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    .line 225
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    new-instance v6, Lcom/twitter/library/api/search/c;

    iget-object v7, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    iget-object v8, p0, Lcom/twitter/android/client/SearchSuggestionController;->j:Lcom/twitter/library/client/bk;

    .line 226
    invoke-virtual {v8}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4, v5}, Lcom/twitter/library/api/search/c;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    iget-object v4, p0, Lcom/twitter/android/client/SearchSuggestionController;->d:Lcom/twitter/android/client/be;

    invoke-virtual {v1, v6, v4}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/PopupEditText;->post(Ljava/lang/Runnable;)Z

    .line 229
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->j:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/client/SearchSuggestionController;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v5, "search_box"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "focus_field"

    .line 230
    invoke-static {v4, v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 231
    iput-boolean v2, p0, Lcom/twitter/android/client/SearchSuggestionController;->u:Z

    .line 232
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->r:Lcom/twitter/android/client/bf;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->r:Lcom/twitter/android/client/bf;

    invoke-interface {v0}, Lcom/twitter/android/client/bf;->p_()V

    :cond_1
    move v3, v2

    .line 235
    goto/16 :goto_0

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->f:Lcom/twitter/android/client/bh;

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/PopupEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    sget-object v1, Lcom/twitter/internal/android/widget/PopupEditText;->a:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    sget-object v4, Lcom/twitter/internal/android/widget/PopupEditText;->b:Landroid/widget/Filterable;

    .line 210
    invoke-static {}, Lcom/twitter/android/client/bu;->h()I

    move-result v5

    int-to-long v6, v5

    .line 209
    invoke-virtual {v0, v1, v4, v6, v7}, Lcom/twitter/internal/android/widget/PopupEditText;->a(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;Landroid/widget/Filterable;J)V

    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 218
    goto/16 :goto_2
.end method

.method public a(Lcom/twitter/library/widget/SearchQueryView;)Z
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p1}, Lcom/twitter/library/widget/SearchQueryView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/twitter/android/client/SearchSuggestionController;->d()Z

    .line 534
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 532
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SearchQueryView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 547
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 548
    :goto_0
    iget-boolean v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->v:Z

    if-eq v0, v1, :cond_0

    .line 549
    iput-boolean v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->v:Z

    .line 550
    invoke-direct {p0}, Lcom/twitter/android/client/SearchSuggestionController;->i()V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->m:Lcom/twitter/android/client/bl;

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/SearchSuggestionController;->a(Ljava/lang/CharSequence;)V

    .line 558
    :cond_1
    return-void

    .line 547
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/android/client/SearchSuggestionController;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    .line 182
    return-object p0
.end method

.method b()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->b:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 485
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->f:Lcom/twitter/android/client/bh;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/bh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 326
    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/client/SearchSuggestionController;->a(ILandroid/database/Cursor;)V

    .line 327
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 165
    const-string/jumbo v0, "search_topic"

    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/client/SearchSuggestionController;->a(Ljava/lang/CharSequence;Z)V

    .line 436
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 578
    iput p1, p0, Lcom/twitter/android/client/SearchSuggestionController;->y:I

    .line 579
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->u:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->q:Lbjl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->q:Lbjl;

    invoke-virtual {v0}, Lbjl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->q:Lbjl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->q:Lbjl;

    invoke-virtual {v0}, Lbjl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 287
    const v1, 0x7f130602

    if-ne v0, v1, :cond_1

    .line 288
    check-cast p1, Lcom/twitter/internal/android/widget/PopupEditText;

    .line 289
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1, v5}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 290
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/SearchSuggestionController;->a(Lcom/twitter/internal/android/widget/PopupEditText;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const v1, 0x7f130705

    if-ne v0, v1, :cond_2

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0a06cf

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 294
    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->s:Ljava/lang/String;

    .line 295
    new-instance v1, Lcom/twitter/android/widget/ec;

    invoke-direct {v1, v5}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v3, 0x7f0a06d0

    .line 296
    invoke-virtual {v1, v3}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/ec;

    .line 297
    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/ec;->a(Ljava/lang/CharSequence;)Lcom/twitter/android/widget/eb;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/ec;

    const v2, 0x7f0a09bb

    .line 298
    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/ec;

    const v2, 0x7f0a05a7

    .line 299
    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/ec;

    .line 300
    invoke-virtual {v1}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/client/bc;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/client/bc;-><init>(Lcom/twitter/android/client/SearchSuggestionController;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "TAG_CLEAR_RECENT_SEARCH_DIALOG"

    .line 302
    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/base/BaseDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_2
    const v1, 0x7f130724

    if-ne v0, v1, :cond_0

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/client/SearchSuggestionController;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->n:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    iput-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->o:Ljava/lang/String;

    .line 264
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    sget-object v1, Lcom/twitter/android/provider/SuggestionsProvider;->i:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 269
    :goto_0
    new-instance v0, Lcom/twitter/android/bt;

    iget-object v1, p0, Lcom/twitter/android/client/SearchSuggestionController;->i:Landroid/support/v4/app/FragmentActivity;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 267
    :cond_0
    sget-object v2, Lcom/twitter/android/provider/SuggestionsProvider;->i:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    .line 408
    const v1, 0x7f130602

    if-ne v0, v1, :cond_1

    .line 409
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    const/16 v0, 0x42

    .line 410
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/client/SearchSuggestionController;->g()Z

    move-result v0

    .line 414
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/client/SearchSuggestionController;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->f:Lcom/twitter/android/client/bh;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/bh;->a(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/twitter/android/client/SearchSuggestionController;->f:Lcom/twitter/android/client/bh;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/bh;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 282
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public x()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method
