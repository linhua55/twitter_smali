.class public abstract Lcom/twitter/library/util/an;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Ljava/util/Random;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/twitter/library/util/an;->a:Ljava/util/Random;

    .line 102
    const-string/jumbo v0, "%(\\d+\\$|<?)([^a-zA-z%]*)([[a-zA-Z%]&&[^tT]]|[tT][a-zA-Z])"

    .line 103
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/util/an;->b:Ljava/util/regex/Pattern;

    .line 102
    return-void
.end method

.method public static a(IIF)F
    .locals 2

    .prologue
    .line 824
    if-lez p0, :cond_0

    if-lez p1, :cond_0

    int-to-float v0, p0

    int-to-float v1, p1

    div-float p2, v0, v1

    :cond_0
    return p2
.end method

.method public static a(Ljava/lang/String;I)Landroid/text/Spannable;
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 985
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 986
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 987
    return-object v0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/twitter/library/util/an;->a([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, -0x1

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 164
    if-ne v2, v9, :cond_0

    .line 165
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 204
    :goto_0
    return-object v0

    .line 167
    :cond_0
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 168
    if-ne v1, v9, :cond_1

    .line 169
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    :cond_1
    array-length v6, p0

    .line 176
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v3, v1

    move v4, v2

    move v1, v0

    move v2, v0

    .line 179
    :cond_2
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 182
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 184
    aget-object v1, p0, v2

    sub-int/2addr v4, v0

    sub-int v7, v3, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    const/16 v8, 0x21

    invoke-virtual {v5, v1, v4, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    .line 188
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    .line 189
    if-lt v2, v6, :cond_4

    .line 202
    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v5

    .line 204
    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 194
    if-eq v4, v9, :cond_5

    .line 195
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 197
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 199
    :cond_5
    if-eq v4, v9, :cond_3

    if-ne v3, v9, :cond_2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;II)Lcom/twitter/ui/view/a;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 118
    new-instance v1, Lcom/twitter/library/util/ao;

    invoke-direct {v1, v0, p0, p1}, Lcom/twitter/library/util/ao;-><init>(ILandroid/content/Context;I)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;IILjava/lang/Class;)Lcom/twitter/ui/view/a;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 141
    new-instance v1, Lcom/twitter/library/util/ap;

    invoke-direct {v1, v0, p0, p3, p1}, Lcom/twitter/library/util/ap;-><init>(ILandroid/content/Context;Ljava/lang/Class;I)V

    return-object v1
.end method

.method public static varargs a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 752
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 753
    instance-of v1, v0, Landroid/text/Spanned;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Landroid/text/Spanned;

    .line 754
    invoke-static {v0}, Lcom/twitter/library/util/an;->a(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 759
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 760
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-interface {p0, v1, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 761
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 762
    invoke-virtual {v4}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    .line 763
    and-int/lit8 v6, v5, 0x3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 764
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    const-string/jumbo v6, "<b><i>"

    invoke-virtual {v2, v5, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 765
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const-string/jumbo v5, "</i></b>"

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 761
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    :cond_1
    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 767
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    const-string/jumbo v6, "<b>"

    invoke-virtual {v2, v5, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 768
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const-string/jumbo v5, "</b>"

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 769
    :cond_2
    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 770
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    const-string/jumbo v6, "<i>"

    invoke-virtual {v2, v5, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 771
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const-string/jumbo v5, "</i>"

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 774
    :cond_3
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    if-eqz p0, :cond_0

    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 235
    if-ne v2, v6, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-object p0

    .line 238
    :cond_1
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 239
    if-eq v1, v6, :cond_0

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v2

    move v2, v1

    move v1, v0

    .line 248
    :cond_2
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    .line 255
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 256
    if-eq v3, v6, :cond_3

    .line 257
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 261
    :cond_3
    if-eq v3, v6, :cond_4

    if-ne v2, v6, :cond_2

    .line 264
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 980
    if-eqz p0, :cond_0

    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "%2A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x3d

    const/16 v6, 0x2c

    const/16 v5, 0x5f

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    if-eqz p0, :cond_1

    .line 850
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 851
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 852
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 853
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 855
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 856
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 860
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs a([Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 829
    invoke-static {p0}, Lcom/twitter/library/util/an;->b([Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/twitter/model/account/OAuthToken;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/account/OAuthToken;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    invoke-static {p1}, Lcom/twitter/util/ap;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 908
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v6

    .line 910
    if-eqz p0, :cond_0

    .line 911
    new-instance v0, Lcom/twitter/library/network/aa;

    invoke-direct {v0, p0}, Lcom/twitter/library/network/aa;-><init>(Lcom/twitter/model/account/OAuthToken;)V

    .line 912
    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->a:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/network/aa;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;Ljava/net/URI;Lorg/apache/http/HttpEntity;J)Ljava/lang/String;

    move-result-object v0

    .line 913
    const-string/jumbo v1, "Authorization"

    invoke-virtual {v6, v1, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 915
    :cond_0
    invoke-virtual {v6}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 4
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 931
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v1

    .line 932
    const/4 v0, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 934
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 936
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 935
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.INITIAL_INTENTS"

    .line 937
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 939
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 940
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 871
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget v1, Lbkb;->intent_chooser_title:I

    invoke-static {p0, v0, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 872
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Z)V
    .locals 1

    .prologue
    .line 409
    new-instance v0, Lcom/twitter/model/core/ay;

    invoke-direct {v0, p1}, Lcom/twitter/model/core/ay;-><init>(Lcom/twitter/model/core/Tweet;)V

    invoke-static {p0, v0, p2}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Lcom/twitter/model/core/ay;Z)V

    .line 410
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/core/ay;Z)V
    .locals 12

    .prologue
    .line 425
    sget v0, Lbkb;->tweet_share_link:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p1, Lcom/twitter/model/core/ay;->e:J

    .line 426
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 425
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 427
    sget v0, Lbkb;->app_download_url:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 428
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget v0, Lbkb;->tweet_date_format:I

    .line 429
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 430
    new-instance v4, Lcom/twitter/library/util/ae;

    invoke-direct {v4}, Lcom/twitter/library/util/ae;-><init>()V

    .line 431
    sget-object v0, Lcom/twitter/library/util/ae;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 432
    sget v6, Lbkb;->tweets_share_subject_long_format:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget v7, Lbkb;->tweets_share_long_format:I

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-wide v10, p1, Lcom/twitter/model/core/ay;->i:J

    .line 437
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p1, Lcom/twitter/model/core/ay;->f:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 438
    invoke-static {v1, v0}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/16 v10, 0xd

    .line 439
    invoke-static {v2, v10}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 435
    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 432
    invoke-virtual {v4, v0, v6, v7}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_0
    sget-object v0, Lcom/twitter/library/util/ae;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 443
    sget v3, Lbkb;->tweets_share_short_format:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 446
    invoke-static {v1, v0}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 444
    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-virtual {v4, v0, v3}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_1
    invoke-virtual {v4, p0, p1, p2}, Lcom/twitter/library/util/ae;->a(Landroid/content/Context;Lcom/twitter/model/core/ay;Z)V

    .line 449
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/moments/ad;Z)V
    .locals 5

    .prologue
    .line 644
    new-instance v1, Lcom/twitter/library/util/ae;

    invoke-direct {v1}, Lcom/twitter/library/util/ae;-><init>()V

    .line 645
    sget-object v0, Lcom/twitter/library/util/ae;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 646
    iget-object v3, p1, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/twitter/model/moments/ad;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_0
    sget-object v0, Lcom/twitter/library/util/ae;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 649
    iget-object v3, p1, Lcom/twitter/model/moments/ad;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 651
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0, p2}, Lcom/twitter/library/util/ae;->a(Landroid/content/Context;Lcom/twitter/model/core/ay;Z)V

    .line 652
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 732
    sget v0, Lbkb;->app_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/twitter/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 496
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 497
    :goto_0
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 503
    :cond_0
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "\\+"

    const-string/jumbo v5, "%20"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 508
    sget v4, Lbkb;->app_download_url:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 509
    if-eqz v0, :cond_2

    sget v0, Lbkb;->search_hashtag_share_link:I

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    .line 510
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 513
    :goto_1
    new-instance v5, Lcom/twitter/library/util/ae;

    invoke-direct {v5}, Lcom/twitter/library/util/ae;-><init>()V

    .line 514
    sget-object v0, Lcom/twitter/library/util/ae;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 515
    sget v7, Lbkb;->search_share_subject_long_format:I

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p2, v8, v3

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lbkb;->search_share_long_format:I

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p2, v9, v3

    .line 519
    invoke-static {v1, v0}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v10, 0x2

    const/16 v11, 0xd

    .line 520
    invoke-static {v4, v11}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 517
    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 515
    invoke-virtual {v5, v0, v7, v8}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move v0, v3

    .line 496
    goto :goto_0

    .line 510
    :cond_2
    sget v0, Lbkb;->search_share_link:I

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    .line 511
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 523
    :cond_3
    sget-object v0, Lcom/twitter/library/util/ae;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 524
    sget v6, Lbkb;->search_share_short_format:I

    new-array v7, v2, [Ljava/lang/Object;

    .line 526
    invoke-static {v1, v0}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 525
    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 524
    invoke-virtual {v5, v0, v6}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 528
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v5, p0, v0, v2}, Lcom/twitter/library/util/ae;->a(Landroid/content/Context;Lcom/twitter/model/core/ay;Z)V

    .line 529
    :goto_4
    return-void

    .line 504
    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 464
    sget v0, Lbkb;->user_share_link:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 465
    sget v0, Lbkb;->app_download_url:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    new-instance v3, Lcom/twitter/library/util/ae;

    invoke-direct {v3}, Lcom/twitter/library/util/ae;-><init>()V

    .line 468
    sget-object v0, Lcom/twitter/library/util/ae;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 469
    sget v5, Lbkb;->user_share_subject_long_format:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lbkb;->user_share_long_format:I

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    .line 473
    invoke-static {v1, v0}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const/16 v9, 0xd

    .line 474
    invoke-static {v2, v9}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 471
    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 469
    invoke-virtual {v3, v0, v5, v6}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_0
    sget-object v0, Lcom/twitter/library/util/ae;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 478
    sget v4, Lbkb;->user_share_short_format:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    .line 480
    invoke-static {v1, v0}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 479
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 478
    invoke-virtual {v3, v0, v4}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 482
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v3, p0, v0, v1}, Lcom/twitter/library/util/ae;->a(Landroid/content/Context;Lcom/twitter/model/core/ay;Z)V

    .line 483
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 580
    sget v0, Lbkb;->list_share_link:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 581
    sget v0, Lbkb;->app_download_url:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 583
    new-instance v3, Lcom/twitter/library/util/ae;

    invoke-direct {v3}, Lcom/twitter/library/util/ae;-><init>()V

    .line 584
    sget-object v0, Lcom/twitter/library/util/ae;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 585
    sget v5, Lbkb;->list_share_subject_long_format:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lbkb;->list_share_long_format:I

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p4, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p5, v7, v8

    const/4 v8, 0x3

    .line 589
    invoke-static {v1, v0}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const/16 v9, 0xd

    .line 590
    invoke-static {v2, v9}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 587
    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 585
    invoke-virtual {v3, v0, v5, v6}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_0
    sget-object v0, Lcom/twitter/library/util/ae;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 594
    sget v4, Lbkb;->list_share_short_format:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p4, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    .line 596
    invoke-static {v1, v0}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 595
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 594
    invoke-virtual {v3, v0, v4}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 598
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v3, p0, v0, v1}, Lcom/twitter/library/util/ae;->a(Landroid/content/Context;Lcom/twitter/model/core/ay;Z)V

    .line 599
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/IntentSender;)V

    .line 540
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/IntentSender;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 556
    new-instance v0, Lcom/twitter/library/util/ae;

    invoke-direct {v0}, Lcom/twitter/library/util/ae;-><init>()V

    .line 557
    const-string/jumbo v1, " "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;)V

    .line 559
    if-eqz p2, :cond_0

    .line 560
    invoke-virtual {v0, v4}, Lcom/twitter/library/util/ae;->a(Z)V

    .line 562
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v4, p3}, Lcom/twitter/library/util/ae;->a(Landroid/content/Context;Lcom/twitter/model/core/ay;ZLandroid/content/IntentSender;)V

    .line 563
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 958
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 960
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 961
    if-eqz v1, :cond_2

    .line 962
    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v2, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 964
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 965
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 966
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 967
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p3, :cond_1

    invoke-interface {p3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 970
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 971
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 970
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 976
    :cond_2
    return-void
.end method

.method public static a(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 373
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 374
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 375
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    :cond_0
    return-void
.end method

.method public static a(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 737
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 738
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 739
    if-ltz v0, :cond_0

    if-ge v1, v0, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-interface {p0, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 744
    invoke-interface {p0, v0, v1, p2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 745
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x21

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/twitter/model/account/OAuthToken;)V
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/twitter/library/util/an;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;Lcom/twitter/model/account/OAuthToken;)V

    .line 903
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 877
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;Lcom/twitter/model/account/OAuthToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twitter/model/account/OAuthToken;",
            ")V"
        }
    .end annotation

    .prologue
    .line 890
    invoke-static {p3, p1}, Lcom/twitter/library/util/an;->a(Lcom/twitter/model/account/OAuthToken;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 891
    if-eqz p2, :cond_0

    .line 892
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 894
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/twitter/library/util/an;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 895
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 919
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 920
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 669
    .line 670
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 672
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 673
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v5, "@twitter.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 674
    const/4 v0, 0x1

    .line 678
    :cond_0
    return v0

    .line 672
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)Z
    .locals 1

    .prologue
    .line 683
    if-eqz p1, :cond_0

    .line 684
    invoke-static {}, Lcom/twitter/library/util/b;->a()I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo v0, "@twitter.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 683
    :goto_0
    return v0

    .line 684
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs b([Z)J
    .locals 6

    .prologue
    .line 833
    const-wide/16 v2, 0x0

    .line 834
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 835
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    .line 836
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 834
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 839
    :cond_1
    return-wide v2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 656
    const-string/jumbo v0, "d6PaPHJeSpyHXeVyWT6ePCcSMSrnD83MnfMgWhtczxpnSMSF7CQcBSQqtBNh6Jym"

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "d6PaPHJeSpyHXeVyWT6ePCcSMSrnD83MnfMgWhtczxpnSMSF7CQcBSQqtBNh6Jym"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Activation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 616
    sget v0, Lbkb;->app_download_url:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 618
    new-instance v2, Lcom/twitter/library/util/ae;

    invoke-direct {v2}, Lcom/twitter/library/util/ae;-><init>()V

    .line 619
    sget-object v0, Lcom/twitter/library/util/ae;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 620
    sget v4, Lbkb;->timeline_share_subject_long_format:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lbkb;->timeline_share_long_format:I

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    const/4 v7, 0x4

    .line 625
    invoke-static {p5, v0}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const/16 v8, 0xd

    .line 626
    invoke-static {v1, v8}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 622
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 620
    invoke-virtual {v2, v0, v4, v5}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_0
    sget-object v0, Lcom/twitter/library/util/ae;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 630
    sget v3, Lbkb;->timeline_share_short_format:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    .line 632
    invoke-static {p5, v0}, Lcom/twitter/library/util/ae;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 631
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-virtual {v2, v0, v3}, Lcom/twitter/library/util/ae;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 634
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v2, p0, v0, v1}, Lcom/twitter/library/util/ae;->a(Landroid/content/Context;Lcom/twitter/model/core/ay;Z)V

    .line 635
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 688
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 689
    const/4 v0, 0x1

    .line 705
    :cond_0
    :goto_0
    return v0

    .line 692
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 694
    if-eqz v1, :cond_0

    .line 698
    invoke-static {v1}, Lcom/twitter/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lbjr;->whitelisted_device_ids:I

    .line 704
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 392
    if-eqz p0, :cond_0

    const-string/jumbo v0, "video/mp4"

    .line 393
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "avc1.42E0"

    .line 394
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    :goto_0
    const-string/jumbo v0, "(?i).*twitter.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const-string/jumbo v0, "(?i)twitter"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 665
    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 783
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v3

    .line 784
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v8

    .line 786
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 787
    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 788
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 789
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 790
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 791
    if-eqz v1, :cond_0

    .line 794
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v9, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 795
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_1
    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 800
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 802
    :goto_2
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    .line 803
    invoke-virtual {v3, v11}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 804
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 796
    :catch_0
    move-exception v1

    move-wide v4, v6

    goto :goto_1

    .line 809
    :cond_1
    invoke-virtual {v3}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 810
    invoke-virtual {v8}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 811
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 812
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v4

    .line 814
    :goto_3
    if-ge v2, v3, :cond_2

    .line 815
    add-int/lit8 v5, v2, 0x64

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 816
    new-instance v6, Landroid/util/Pair;

    const-string/jumbo v7, ","

    invoke-interface {v0, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ","

    .line 817
    invoke-interface {v1, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 816
    invoke-virtual {v4, v6}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 818
    add-int/2addr v2, v5

    .line 819
    goto :goto_3

    .line 820
    :cond_2
    invoke-virtual {v4}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_3
    move-wide v0, v4

    goto :goto_2
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 709
    const-string/jumbo v0, "vine_video_hosts"

    invoke-static {v0}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 710
    const/4 v1, 0x0

    .line 712
    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 713
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 714
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 715
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 716
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 717
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 718
    check-cast v0, Ljava/lang/String;

    .line 719
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    const/4 v0, 0x1

    .line 728
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
