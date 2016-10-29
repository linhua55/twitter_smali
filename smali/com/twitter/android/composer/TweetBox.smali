.class public Lcom/twitter/android/composer/TweetBox;
.super Landroid/widget/FrameLayout;
.source "Twttr"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/twitter/android/autocomplete/e;
.implements Lcom/twitter/android/autocomplete/f;
.implements Lcom/twitter/android/autocomplete/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/twitter/android/autocomplete/e;",
        "Lcom/twitter/android/autocomplete/f",
        "<",
        "Lsv;",
        "Lcom/twitter/android/provider/m;",
        ">;",
        "Lcom/twitter/android/autocomplete/g",
        "<",
        "Lsv;",
        "Lcom/twitter/android/provider/m;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/android/autocomplete/SuggestionEditText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/autocomplete/SuggestionEditText",
            "<",
            "Lsv;",
            "Lcom/twitter/android/provider/m;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/twitter/android/composer/cl;

.field c:Z

.field d:Z

.field private final e:Z

.field private final f:Lcom/twitter/library/client/Session;

.field private final g:Lcom/twitter/android/client/c;

.field private final h:Lsw;

.field private i:Lcom/twitter/model/core/Tweet;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Lcom/twitter/model/core/ay;

.field private s:Z

.field private t:Landroid/text/TextWatcher;

.field private u:I

.field private v:Lcom/twitter/util/Tristate;

.field private w:Ljava/lang/String;

.field private x:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/composer/TweetBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->d:Z

    .line 93
    new-instance v0, Lsw;

    invoke-direct {v0}, Lsw;-><init>()V

    .line 94
    invoke-virtual {v0, v1}, Lsw;->b(Z)Lsw;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v1}, Lsw;->a(Z)Lsw;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/TweetBox;->h:Lsw;

    .line 101
    iput-boolean v1, p0, Lcom/twitter/android/composer/TweetBox;->m:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/composer/TweetBox;->q:I

    .line 109
    const/16 v0, 0x8c

    iput v0, p0, Lcom/twitter/android/composer/TweetBox;->u:I

    .line 110
    sget-object v0, Lcom/twitter/util/Tristate;->a:Lcom/twitter/util/Tristate;

    iput-object v0, p0, Lcom/twitter/android/composer/TweetBox;->v:Lcom/twitter/util/Tristate;

    .line 122
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/TweetBox;->f:Lcom/twitter/library/client/Session;

    .line 123
    invoke-static {p1}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/TweetBox;->g:Lcom/twitter/android/client/c;

    .line 124
    const-string/jumbo v0, "hashflags_in_composer_android_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->e:Z

    .line 125
    return-void
.end method

.method private static a(Landroid/text/Spanned;I)Lcom/twitter/android/composer/cj;
    .locals 1

    .prologue
    .line 422
    const-class v0, Lcom/twitter/android/composer/cj;

    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/cj;

    return-object v0
.end method

.method private a(Landroid/text/SpannableStringBuilder;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 900
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Lcom/twitter/android/composer/cj;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/composer/cj;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 901
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 900
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 903
    :cond_0
    return-void
.end method

.method static a(Landroid/widget/EditText;II)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 395
    invoke-static {v0, p1}, Lcom/twitter/android/composer/TweetBox;->a(Landroid/text/Spanned;I)Lcom/twitter/android/composer/cj;

    move-result-object v1

    .line 396
    if-ne p2, p1, :cond_1

    .line 397
    if-eqz v1, :cond_0

    .line 398
    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 399
    invoke-virtual {p0, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-static {v0, p2}, Lcom/twitter/android/composer/TweetBox;->a(Landroid/text/Spanned;I)Lcom/twitter/android/composer/cj;

    move-result-object v2

    .line 406
    if-eqz v1, :cond_2

    .line 407
    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    .line 411
    :cond_2
    if-eqz v2, :cond_3

    .line 412
    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    .line 416
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/composer/TweetBox;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/twitter/android/composer/TweetBox;->p()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/composer/TweetBox;Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/TweetBox;->a(Landroid/text/SpannableStringBuilder;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/composer/TweetBox;Lcom/twitter/android/composer/bw;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/TweetBox;->a(Lcom/twitter/android/composer/bw;)V

    return-void
.end method

.method private a(Lcom/twitter/android/composer/bw;)V
    .locals 8

    .prologue
    .line 868
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 870
    invoke-virtual {p1}, Lcom/twitter/android/composer/bw;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/twitter/android/composer/bw;->b()I

    move-result v2

    const-class v3, Lcom/twitter/android/composer/cj;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/twitter/android/composer/cj;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 871
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 872
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 870
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 874
    :cond_0
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 650
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->f:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 651
    invoke-static {p1, v0, v1}, Lciz;->c(Lcom/twitter/model/core/Tweet;J)Ljava/util/List;

    move-result-object v4

    .line 652
    invoke-static {v4}, Lciz;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/composer/TweetBox;->a(Ljava/lang/String;[I)V

    .line 657
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 658
    invoke-direct {p0}, Lcom/twitter/android/composer/TweetBox;->getMaxUserReplyCount()I

    move-result v6

    .line 659
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v1, v2

    move v3, v2

    .line 660
    :goto_0
    if-ge v1, v7, :cond_0

    .line 661
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bf;

    iget-object v0, v0, Lcom/twitter/model/core/bf;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 660
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 664
    :cond_0
    if-le v5, v6, :cond_1

    .line 666
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->f:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v4, ":composition::mentions_highlight:impression"

    aput-object v4, v1, v2

    .line 667
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    sub-int v1, v5, v6

    int-to-long v4, v1

    .line 668
    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 669
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    .line 674
    new-instance v1, Lcom/twitter/android/composer/ci;

    invoke-direct {v1, p0, v0, v3}, Lcom/twitter/android/composer/ci;-><init>(Lcom/twitter/android/composer/TweetBox;Landroid/widget/EditText;I)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/composer/TweetBox;->post(Ljava/lang/Runnable;)Z

    .line 682
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/composer/TweetBox;Lcom/twitter/android/composer/bw;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/TweetBox;->b(Lcom/twitter/android/composer/bw;)V

    return-void
.end method

.method private b(Lcom/twitter/android/composer/bw;)V
    .locals 5

    .prologue
    .line 877
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 879
    invoke-virtual {p1}, Lcom/twitter/android/composer/bw;->b()I

    move-result v1

    .line 880
    invoke-virtual {p1}, Lcom/twitter/android/composer/bw;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 881
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/library/view/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/twitter/library/view/d;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v1}, Lcom/twitter/library/view/d;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    .line 882
    invoke-static {v3, v0, v4, p0, v2}, Lcom/twitter/library/view/d;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/twitter/library/view/d;Landroid/view/View;Z)I

    move-result v2

    .line 884
    new-instance v3, Lcom/twitter/android/composer/cj;

    invoke-direct {v3}, Lcom/twitter/android/composer/cj;-><init>()V

    add-int/2addr v2, v1

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 886
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/composer/TweetBox;->a(Ljava/lang/String;[I)V

    .line 641
    new-instance v0, Lcom/twitter/android/composer/ch;

    invoke-direct {v0, p0}, Lcom/twitter/android/composer/ch;-><init>(Lcom/twitter/android/composer/TweetBox;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/TweetBox;->post(Ljava/lang/Runnable;)Z

    .line 647
    return-void

    .line 639
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private c(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 890
    if-ne p1, p2, :cond_0

    .line 891
    const-string/jumbo v0, ""

    .line 896
    :goto_0
    return-object v0

    .line 894
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 895
    invoke-direct {p0, v0}, Lcom/twitter/android/composer/TweetBox;->a(Landroid/text/SpannableStringBuilder;)V

    .line 896
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMaxUserReplyCount()I
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x5

    return v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->d:Z

    .line 224
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->b:Lcom/twitter/android/composer/cl;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->b:Lcom/twitter/android/composer/cl;

    invoke-interface {v0}, Lcom/twitter/android/composer/cl;->c()V

    .line 227
    :cond_0
    invoke-static {}, Lcaq;->a()Lcaq;

    move-result-object v0

    invoke-virtual {v0}, Lcaq;->b()Z

    .line 228
    return-void
.end method

.method private q()Z
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->v:Lcom/twitter/util/Tristate;

    sget-object v1, Lcom/twitter/util/Tristate;->a:Lcom/twitter/util/Tristate;

    if-ne v0, v1, :cond_0

    .line 298
    invoke-static {}, Lcaq;->a()Lcaq;

    move-result-object v0

    invoke-virtual {v0}, Lcaq;->e()Z

    move-result v0

    .line 297
    invoke-static {v0}, Lcom/twitter/util/Tristate;->a(Z)Lcom/twitter/util/Tristate;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/TweetBox;->v:Lcom/twitter/util/Tristate;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->v:Lcom/twitter/util/Tristate;

    sget-object v1, Lcom/twitter/util/Tristate;->c:Lcom/twitter/util/Tristate;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/twitter/android/composer/cg;

    invoke-direct {v3, p0}, Lcom/twitter/android/composer/cg;-><init>(Lcom/twitter/android/composer/TweetBox;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 334
    return-void
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->i:Lcom/twitter/model/core/Tweet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 689
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v2}, Lcom/twitter/android/autocomplete/SuggestionEditText;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v3

    .line 690
    iget v0, p0, Lcom/twitter/android/composer/TweetBox;->l:I

    add-int v4, v3, v0

    .line 692
    invoke-static {}, Lcaq;->a()Lcaq;

    move-result-object v0

    invoke-virtual {v0}, Lcaq;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    :goto_0
    if-gtz v3, :cond_0

    if-nez v1, :cond_5

    :cond_0
    add-int v0, v4, v1

    .line 704
    invoke-direct {p0}, Lcom/twitter/android/composer/TweetBox;->u()I

    move-result v1

    sub-int/2addr v0, v1

    .line 703
    :goto_1
    return v0

    .line 696
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/by;->a(Landroid/content/Context;)Lcom/twitter/android/client/by;

    move-result-object v5

    .line 697
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->n:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->p:Z

    .line 698
    invoke-virtual {v5, v0}, Lcom/twitter/android/client/by;->a(Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 699
    :goto_2
    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->r:Lcom/twitter/model/core/ay;

    if-eqz v2, :cond_4

    invoke-virtual {v5, v7}, Lcom/twitter/android/client/by;->a(Z)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 700
    :goto_3
    iget-boolean v6, p0, Lcom/twitter/android/composer/TweetBox;->o:Z

    if-eqz v6, :cond_2

    invoke-virtual {v5, v7}, Lcom/twitter/android/client/by;->a(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 701
    :cond_2
    add-int/2addr v0, v2

    add-int/2addr v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 698
    goto :goto_2

    :cond_4
    move v2, v1

    .line 699
    goto :goto_3

    .line 704
    :cond_5
    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private u()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 708
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->e:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 716
    :goto_0
    return v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 713
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->length()I

    move-result v0

    const-class v2, Lcom/twitter/android/composer/cj;

    invoke-interface {v4, v1, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/composer/cj;

    array-length v5, v0

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 714
    invoke-interface {v4, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v4, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    sub-int v3, v6, v3

    add-int/2addr v3, v1

    .line 713
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_1
    move v0, v1

    .line 716
    goto :goto_0
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 853
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->m:Z

    if-eqz v0, :cond_0

    .line 854
    iput-boolean v3, p0, Lcom/twitter/android/composer/TweetBox;->m:Z

    .line 855
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 856
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 857
    const-string/jumbo v2, "url_hints"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 858
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 859
    const v3, 0x7f0a067d

    invoke-static {v0, v3}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;I)V

    .line 860
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 861
    const-string/jumbo v1, "url_hints"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 862
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 865
    :cond_0
    return-void
.end method


# virtual methods
.method public J_()V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    check-cast p1, Lsv;

    check-cast p2, Lcom/twitter/android/provider/m;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/composer/TweetBox;->a(Lsv;Lcom/twitter/android/provider/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lsv;Lcom/twitter/android/provider/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    iget v0, p1, Lsv;->b:I

    invoke-static {v0, p2}, Lcom/twitter/android/autocomplete/adapters/a;->a(ILcom/twitter/android/provider/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->bringPointIntoView(I)Z

    .line 253
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->s:Z

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->length()I

    move-result v0

    const-string/jumbo v1, " #alert"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 378
    if-ltz v0, :cond_2

    .line 379
    if-le p1, v0, :cond_1

    .line 380
    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v1, v0, v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setSelection(II)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    if-le p2, v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v1, p1, v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setSelection(II)V

    goto :goto_0

    .line 387
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->e:Z

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-static {v0, p1, p2}, Lcom/twitter/android/composer/TweetBox;->a(Landroid/widget/EditText;II)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/Tristate;)V
    .locals 1

    .prologue
    .line 279
    iput-object p2, p0, Lcom/twitter/android/composer/TweetBox;->v:Lcom/twitter/util/Tristate;

    .line 280
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->i:Lcom/twitter/model/core/Tweet;

    invoke-static {p1, v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iput-object p1, p0, Lcom/twitter/android/composer/TweetBox;->i:Lcom/twitter/model/core/Tweet;

    .line 282
    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->k()V

    .line 284
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->i:Lcom/twitter/model/core/Tweet;

    iget-object v0, v0, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/TweetBox;->setReplyToUsername(Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/composer/TweetBox;->i:Lcom/twitter/model/core/Tweet;

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 571
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcmf;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lsv;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/composer/TweetBox;->a(Lsv;Lcmf;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 588
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->h:Lsw;

    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    .line 590
    invoke-virtual {v2}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsw;->a_(Ljava/lang/CharSequence;I)Lsu;

    move-result-object v1

    .line 591
    if-eqz v1, :cond_0

    .line 592
    iget v2, v1, Lsu;->a:I

    iget v1, v1, Lsu;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 600
    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 601
    return-void
.end method

.method public a(Ljava/lang/String;[I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0, v1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->a(Z)Z

    move-result v1

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0, p1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/composer/TweetBox;->b(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getTextLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/TweetBox;->setCursorPosition(I)V

    .line 313
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0, v1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->a(Z)Z

    .line 317
    return-void

    .line 315
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v2, v1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->a(Z)Z

    throw v0
.end method

.method public a(Lsv;Lcmf;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsv;",
            "Lcmf",
            "<",
            "Lcom/twitter/android/provider/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 815
    iget v0, p1, Lsv;->b:I

    if-ne v0, v5, :cond_0

    const-string/jumbo v0, "user"

    .line 816
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->f:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, ":composition:autocomplete_dropdown"

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    const/4 v0, 0x2

    const-string/jumbo v4, "results"

    aput-object v4, v3, v0

    invoke-static {v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 818
    return-void

    .line 815
    :cond_0
    const-string/jumbo v0, "hashtag"

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 541
    if-nez p1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-static {v0, v1, v2}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 543
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->clearFocus()V

    .line 544
    iput-boolean v2, p0, Lcom/twitter/android/composer/TweetBox;->j:Z

    .line 552
    :goto_0
    return-void

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->requestFocus()Z

    .line 547
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-static {v0, v1, v3}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 548
    iput-boolean v2, p0, Lcom/twitter/android/composer/TweetBox;->j:Z

    goto :goto_0

    .line 550
    :cond_1
    iput-boolean v3, p0, Lcom/twitter/android/composer/TweetBox;->j:Z

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;JLjava/lang/Object;I)Z
    .locals 6

    .prologue
    .line 73
    move-object v1, p1

    check-cast v1, Lsv;

    move-object v4, p4

    check-cast v4, Lcom/twitter/android/provider/m;

    move-object v0, p0

    move-wide v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/composer/TweetBox;->a(Lsv;JLcom/twitter/android/provider/m;I)Z

    move-result v0

    return v0
.end method

.method public a(Lsv;JLcom/twitter/android/provider/m;I)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 804
    iget v0, p1, Lsv;->b:I

    if-ne v0, v6, :cond_0

    const-string/jumbo v0, "user"

    .line 805
    :goto_0
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->f:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, ":composition:autocomplete_dropdown"

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    const/4 v0, 0x2

    const-string/jumbo v4, "select"

    aput-object v4, v3, v0

    invoke-static {v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 807
    return v5

    .line 804
    :cond_0
    const-string/jumbo v0, "hashtag"

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v7, 0x0

    .line 761
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/twitter/android/composer/TweetBox;->k:Z

    .line 763
    sget-object v2, Lra;->h:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 764
    iput v7, p0, Lcom/twitter/android/composer/TweetBox;->l:I

    .line 765
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 766
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 767
    iget v4, p0, Lcom/twitter/android/composer/TweetBox;->l:I

    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/client/by;->a(Landroid/content/Context;)Lcom/twitter/android/client/by;

    move-result-object v5

    .line 768
    invoke-static {v3}, Lcom/twitter/util/ap;->c(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/twitter/android/client/by;->a(Z)I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v5, v3

    add-int/2addr v3, v4

    iput v3, p0, Lcom/twitter/android/composer/TweetBox;->l:I

    goto :goto_0

    .line 770
    :cond_0
    iget v2, p0, Lcom/twitter/android/composer/TweetBox;->l:I

    if-lez v2, :cond_1

    .line 771
    invoke-direct {p0}, Lcom/twitter/android/composer/TweetBox;->v()V

    .line 773
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->l()V

    .line 775
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 776
    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/twitter/util/a;->a(C)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v2, v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setGravity(I)V

    .line 782
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->t:Landroid/text/TextWatcher;

    if-eqz v0, :cond_3

    .line 783
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->t:Landroid/text/TextWatcher;

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 785
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 776
    goto :goto_1

    .line 778
    :cond_5
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v1, v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setGravity(I)V

    goto :goto_2
.end method

.method public b(II)Z
    .locals 1

    .prologue
    .line 530
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setSelection(II)V

    .line 532
    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->t:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->t:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 750
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getTextLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/TweetBox;->setCursorPosition(I)V

    .line 321
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    .line 439
    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    .line 440
    invoke-virtual {v2}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getMeasuredWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v2}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v6, v2

    move-wide v2, v0

    move v7, v4

    .line 439
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v1, v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 442
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 443
    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v1, v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 444
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 445
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->n:Z

    if-nez v0, :cond_1

    .line 454
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->c:Z

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->c:Z

    .line 456
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->k()V

    .line 458
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->n:Z

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->l()V

    .line 461
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->n:Z

    .line 469
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->l()V

    .line 470
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/twitter/android/composer/TweetBox;->q:I

    return v0
.end method

.method public getSelection()[I
    .locals 3

    .prologue
    .line 509
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v2}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getSelectionStart()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v2}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getSelectionEnd()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 499
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/composer/TweetBox;->c(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->length()I

    move-result v0

    return v0
.end method

.method public getTokenAtCursor()Lsv;
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->h:Lsw;

    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v2}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsw;->c(Ljava/lang/CharSequence;I)Lsv;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->o:Z

    if-nez v0, :cond_1

    .line 474
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->c:Z

    if-eqz v0, :cond_0

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->c:Z

    .line 476
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->k()V

    .line 478
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->o:Z

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->l()V

    .line 481
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->o:Z

    .line 485
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->l()V

    .line 486
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->requestFocus()Z

    move-result v0

    return v0
.end method

.method k()V
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/twitter/android/composer/TweetBox;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getTextLength()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->c:Z

    if-eqz v0, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/composer/TweetBox;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->i:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->i:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/TweetBox;->a(Lcom/twitter/model/core/Tweet;)V

    goto :goto_0

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/composer/TweetBox;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public l()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 724
    iget v0, p0, Lcom/twitter/android/composer/TweetBox;->u:I

    if-ne v0, v1, :cond_1

    .line 727
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->b:Lcom/twitter/android/composer/cl;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->b:Lcom/twitter/android/composer/cl;

    invoke-interface {v0, v1}, Lcom/twitter/android/composer/cl;->a(I)V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/composer/TweetBox;->t()I

    move-result v0

    .line 732
    iget v1, p0, Lcom/twitter/android/composer/TweetBox;->q:I

    if-eq v1, v0, :cond_0

    .line 733
    iput v0, p0, Lcom/twitter/android/composer/TweetBox;->q:I

    .line 734
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->b:Lcom/twitter/android/composer/cl;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->b:Lcom/twitter/android/composer/cl;

    iget v1, p0, Lcom/twitter/android/composer/TweetBox;->q:I

    invoke-interface {v0, v1}, Lcom/twitter/android/composer/cl;->a(I)V

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->r:Lcom/twitter/model/core/ay;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->x:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->x:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/twitter/android/composer/TweetBox;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/android/composer/TweetBox;->q:I

    iget v1, p0, Lcom/twitter/android/composer/TweetBox;->u:I

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->b:Lcom/twitter/android/composer/cl;

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->b:Lcom/twitter/android/composer/cl;

    invoke-interface {v0}, Lcom/twitter/android/composer/cl;->b()V

    .line 792
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 129
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 130
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    const v0, 0x7f130276

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/TweetBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;

    .line 133
    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No edit text found in layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-virtual {v0, p0}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    invoke-virtual {v0, p0}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 138
    invoke-virtual {v0, p0}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setSuggestionListener(Lcom/twitter/android/autocomplete/f;)V

    .line 139
    invoke-virtual {v0, p0}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setSuggestionStringConverter(Lcom/twitter/android/autocomplete/g;)V

    .line 140
    invoke-virtual {v0, p0}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setSelectionChangeListener(Lcom/twitter/android/autocomplete/e;)V

    .line 141
    new-instance v2, Lcom/twitter/android/composer/cb;

    invoke-direct {v2, p0}, Lcom/twitter/android/composer/cb;-><init>(Lcom/twitter/android/composer/TweetBox;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    new-instance v2, Lcom/twitter/android/composer/cc;

    invoke-direct {v2, p0}, Lcom/twitter/android/composer/cc;-><init>(Lcom/twitter/android/composer/TweetBox;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setKeyPreImeListener(Lcom/twitter/android/autocomplete/b;)V

    .line 159
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setGravity(I)V

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0682

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 163
    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    invoke-direct {p0}, Lcom/twitter/android/composer/TweetBox;->p()V

    .line 169
    :goto_0
    new-instance v2, Lcom/twitter/android/composer/cd;

    invoke-direct {v2, p0}, Lcom/twitter/android/composer/cd;-><init>(Lcom/twitter/android/composer/TweetBox;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    invoke-static {v1}, Lcom/twitter/ui/widget/ax;->a(Landroid/content/Context;)Lcom/twitter/ui/widget/ax;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    new-instance v2, Lcom/twitter/android/autocomplete/adapters/a;

    invoke-direct {v2, v1}, Lcom/twitter/android/autocomplete/adapters/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setAdapter(Lcom/twitter/android/autocomplete/adapters/h;)V

    .line 191
    new-instance v2, Lsj;

    iget-object v3, p0, Lcom/twitter/android/composer/TweetBox;->f:Lcom/twitter/library/client/Session;

    const-string/jumbo v4, "compose"

    invoke-direct {v2, v1, v3, v4}, Lsj;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 193
    new-instance v3, Lru;

    invoke-direct {v3, v1, v2}, Lru;-><init>(Landroid/content/Context;Lsj;)V

    invoke-virtual {v0, v3}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setSuggestionProvider(Lsb;)V

    .line 194
    iget-object v1, p0, Lcom/twitter/android/composer/TweetBox;->h:Lsw;

    invoke-virtual {v0, v1}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setTokenizer(Lst;)V

    .line 195
    iget-boolean v1, p0, Lcom/twitter/android/composer/TweetBox;->e:Z

    if-eqz v1, :cond_2

    .line 196
    new-instance v1, Lcom/twitter/android/composer/bu;

    new-instance v2, Lsw;

    invoke-direct {v2}, Lsw;-><init>()V

    invoke-virtual {v2, v5}, Lsw;->b(Z)Lsw;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/composer/ce;

    invoke-direct {v3, p0}, Lcom/twitter/android/composer/ce;-><init>(Lcom/twitter/android/composer/TweetBox;)V

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/composer/bu;-><init>(Lst;Lcom/twitter/android/composer/bx;)V

    .line 206
    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/bu;->a(Landroid/widget/EditText;)V

    .line 207
    new-instance v1, Lcom/twitter/android/composer/cf;

    invoke-direct {v1, p0}, Lcom/twitter/android/composer/cf;-><init>(Lcom/twitter/android/composer/TweetBox;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/autocomplete/PopupSuggestionEditText;->setCopyTransformer(Lcom/twitter/android/autocomplete/c;)V

    .line 214
    :cond_2
    iput-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    .line 216
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->k()V

    .line 217
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->s:Z

    if-eqz v0, :cond_3

    .line 218
    invoke-direct {p0}, Lcom/twitter/android/composer/TweetBox;->r()V

    .line 220
    :cond_3
    return-void

    .line 166
    :cond_4
    iput-boolean v5, p0, Lcom/twitter/android/composer/TweetBox;->c:Z

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 237
    move-object v0, p1

    check-cast v0, Lcom/twitter/android/composer/TweetBox$SavedState;

    .line 238
    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    move-object v0, p1

    .line 239
    check-cast v0, Lcom/twitter/android/composer/TweetBox$SavedState;

    iget-boolean v0, v0, Lcom/twitter/android/composer/TweetBox$SavedState;->a:Z

    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->m:Z

    .line 240
    check-cast p1, Lcom/twitter/android/composer/TweetBox$SavedState;

    iget-object v0, p1, Lcom/twitter/android/composer/TweetBox$SavedState;->b:Lcom/twitter/util/Tristate;

    iput-object v0, p0, Lcom/twitter/android/composer/TweetBox;->v:Lcom/twitter/util/Tristate;

    .line 241
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 232
    new-instance v0, Lcom/twitter/android/composer/TweetBox$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-boolean v2, p0, Lcom/twitter/android/composer/TweetBox;->m:Z

    iget-object v3, p0, Lcom/twitter/android/composer/TweetBox;->v:Lcom/twitter/util/Tristate;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/composer/TweetBox$SavedState;-><init>(Landroid/os/Parcelable;ZLcom/twitter/util/Tristate;)V

    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->t:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->t:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 757
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 556
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 557
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->j:Z

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/composer/TweetBox;->a(Z)V

    .line 560
    :cond_0
    return-void
.end method

.method public setAlertHashtag(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 340
    iput-boolean p1, p0, Lcom/twitter/android/composer/TweetBox;->s:Z

    .line 341
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    .line 342
    const-string/jumbo v1, " #alert"

    .line 343
    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getSelectionStart()I

    move-result v1

    .line 344
    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getSelectionEnd()I

    move-result v2

    .line 345
    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    if-eqz p1, :cond_1

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " #alert"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 349
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 350
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 351
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 352
    const-string/jumbo v6, " #alert"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v4, v6

    const/16 v7, 0x21

    invoke-virtual {v5, v3, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 354
    invoke-virtual {v0, v5}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setSelection(II)V

    .line 356
    invoke-direct {p0}, Lcom/twitter/android/composer/TweetBox;->r()V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 359
    const-string/jumbo v5, " #alert"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v4, v5

    .line 360
    new-array v6, v7, [Landroid/text/InputFilter;

    invoke-virtual {v0, v6}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 361
    if-ltz v5, :cond_0

    const-string/jumbo v6, " #alert"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 363
    if-le v1, v5, :cond_2

    .line 364
    invoke-virtual {v0, v5, v5}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setSelection(II)V

    goto :goto_0

    .line 365
    :cond_2
    if-le v2, v5, :cond_3

    .line 366
    invoke-virtual {v0, v1, v5}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setSelection(II)V

    goto :goto_0

    .line 368
    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setSelection(II)V

    goto :goto_0
.end method

.method public setAttachmentsUseSecureUrls(Z)V
    .locals 0

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/twitter/android/composer/TweetBox;->p:Z

    .line 743
    return-void
.end method

.method public setCursorPosition(I)V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0, p1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setSelection(I)V

    .line 524
    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0}, Lcom/twitter/android/autocomplete/SuggestionEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox;->c:Z

    .line 257
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0, p1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 258
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    const/16 v1, 0x65

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 567
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0, p1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->setInputType(I)V

    .line 580
    return-void
.end method

.method public setMaxChars(I)V
    .locals 0

    .prologue
    .line 796
    iput p1, p0, Lcom/twitter/android/composer/TweetBox;->u:I

    .line 797
    return-void
.end method

.method public setPrefillText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/twitter/android/composer/TweetBox;->w:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setQuote(Lcom/twitter/model/core/ay;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/twitter/android/composer/TweetBox;->r:Lcom/twitter/model/core/ay;

    .line 494
    invoke-virtual {p0}, Lcom/twitter/android/composer/TweetBox;->l()V

    .line 495
    return-void
.end method

.method public setReplyToUsername(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(?:^|\\s)@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(?:\\s|$)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/TweetBox;->x:Ljava/util/regex/Pattern;

    .line 838
    return-void
.end method

.method public setSuggestionsEnabled(Z)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox;->a:Lcom/twitter/android/autocomplete/SuggestionEditText;

    invoke-virtual {v0, p1}, Lcom/twitter/android/autocomplete/SuggestionEditText;->a(Z)Z

    .line 245
    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/twitter/android/composer/TweetBox;->t:Landroid/text/TextWatcher;

    .line 249
    return-void
.end method

.method public setTweetBoxListener(Lcom/twitter/android/composer/cl;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/twitter/android/composer/TweetBox;->b:Lcom/twitter/android/composer/cl;

    .line 272
    return-void
.end method
