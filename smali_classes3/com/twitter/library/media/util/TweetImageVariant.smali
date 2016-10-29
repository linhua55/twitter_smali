.class public final enum Lcom/twitter/library/media/util/TweetImageVariant;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/library/media/util/TweetImageVariant;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/library/media/util/TweetImageVariant;

.field public static final enum b:Lcom/twitter/library/media/util/TweetImageVariant;

.field public static final enum c:Lcom/twitter/library/media/util/TweetImageVariant;

.field public static final enum d:Lcom/twitter/library/media/util/TweetImageVariant;

.field public static final e:Lcom/twitter/media/request/d;

.field private static final synthetic f:[Lcom/twitter/library/media/util/TweetImageVariant;


# instance fields
.field private final mIsSizeAwareVariant:Z

.field public final maxSize:Lcom/twitter/util/math/Size;

.field public final postfix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v3, 0x96

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 16
    new-instance v0, Lcom/twitter/library/media/util/TweetImageVariant;

    const-string/jumbo v1, "THUMB"

    invoke-static {v3, v3}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v3

    const-string/jumbo v4, "thumb"

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/media/util/TweetImageVariant;-><init>(Ljava/lang/String;ILcom/twitter/util/math/Size;Ljava/lang/String;Z)V

    sput-object v0, Lcom/twitter/library/media/util/TweetImageVariant;->a:Lcom/twitter/library/media/util/TweetImageVariant;

    .line 17
    new-instance v3, Lcom/twitter/library/media/util/TweetImageVariant;

    const-string/jumbo v4, "SMALL"

    const/16 v0, 0x2a8

    const/16 v1, 0x2a8

    invoke-static {v0, v1}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v6

    const-string/jumbo v7, "small"

    move v8, v5

    invoke-direct/range {v3 .. v8}, Lcom/twitter/library/media/util/TweetImageVariant;-><init>(Ljava/lang/String;ILcom/twitter/util/math/Size;Ljava/lang/String;Z)V

    sput-object v3, Lcom/twitter/library/media/util/TweetImageVariant;->b:Lcom/twitter/library/media/util/TweetImageVariant;

    .line 18
    new-instance v6, Lcom/twitter/library/media/util/TweetImageVariant;

    const-string/jumbo v7, "MEDIUM"

    const/16 v0, 0x4b0

    const/16 v1, 0x4b0

    invoke-static {v0, v1}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v9

    const-string/jumbo v10, "medium"

    move v8, v12

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/media/util/TweetImageVariant;-><init>(Ljava/lang/String;ILcom/twitter/util/math/Size;Ljava/lang/String;Z)V

    sput-object v6, Lcom/twitter/library/media/util/TweetImageVariant;->c:Lcom/twitter/library/media/util/TweetImageVariant;

    .line 19
    new-instance v6, Lcom/twitter/library/media/util/TweetImageVariant;

    const-string/jumbo v7, "LARGE"

    const/16 v0, 0x800

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v9

    const-string/jumbo v10, "large"

    move v8, v13

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/twitter/library/media/util/TweetImageVariant;-><init>(Ljava/lang/String;ILcom/twitter/util/math/Size;Ljava/lang/String;Z)V

    sput-object v6, Lcom/twitter/library/media/util/TweetImageVariant;->d:Lcom/twitter/library/media/util/TweetImageVariant;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/twitter/library/media/util/TweetImageVariant;

    sget-object v1, Lcom/twitter/library/media/util/TweetImageVariant;->a:Lcom/twitter/library/media/util/TweetImageVariant;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/library/media/util/TweetImageVariant;->b:Lcom/twitter/library/media/util/TweetImageVariant;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twitter/library/media/util/TweetImageVariant;->c:Lcom/twitter/library/media/util/TweetImageVariant;

    aput-object v1, v0, v12

    sget-object v1, Lcom/twitter/library/media/util/TweetImageVariant;->d:Lcom/twitter/library/media/util/TweetImageVariant;

    aput-object v1, v0, v13

    sput-object v0, Lcom/twitter/library/media/util/TweetImageVariant;->f:[Lcom/twitter/library/media/util/TweetImageVariant;

    .line 21
    new-instance v0, Lcom/twitter/library/media/util/ae;

    invoke-direct {v0}, Lcom/twitter/library/media/util/ae;-><init>()V

    sput-object v0, Lcom/twitter/library/media/util/TweetImageVariant;->e:Lcom/twitter/media/request/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/twitter/util/math/Size;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/math/Size;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/twitter/library/media/util/TweetImageVariant;->maxSize:Lcom/twitter/util/math/Size;

    .line 40
    iput-object p4, p0, Lcom/twitter/library/media/util/TweetImageVariant;->postfix:Ljava/lang/String;

    .line 41
    iput-boolean p5, p0, Lcom/twitter/library/media/util/TweetImageVariant;->mIsSizeAwareVariant:Z

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/twitter/library/media/util/TweetImageVariant;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "twimg.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    const-string/jumbo v0, "/media/"

    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 81
    :goto_0
    if-eqz v0, :cond_3

    .line 82
    invoke-static {v3}, Lcom/twitter/media/model/ImageFormat;->b(Ljava/lang/String;)Lcom/twitter/media/model/ImageFormat;

    move-result-object v4

    .line 84
    sget-object v0, Lcom/twitter/media/model/ImageFormat;->d:Lcom/twitter/media/model/ImageFormat;

    if-eq v4, v0, :cond_2

    const-string/jumbo v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 85
    :goto_1
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 86
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 87
    sget-object v0, Lcom/twitter/media/model/ImageFormat;->d:Lcom/twitter/media/model/ImageFormat;

    if-eq v4, v0, :cond_0

    .line 88
    const-string/jumbo v0, "format"

    iget-object v1, v4, Lcom/twitter/media/model/ImageFormat;->postfix:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    :cond_0
    const-string/jumbo v0, "name"

    iget-object v1, p1, Lcom/twitter/library/media/util/TweetImageVariant;->postfix:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_2
    return-object v0

    :cond_1
    move v0, v1

    .line 79
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 93
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/library/media/util/TweetImageVariant;->postfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Lcom/twitter/util/math/Size;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/twitter/util/math/Size;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    invoke-virtual {p1}, Lcom/twitter/util/math/Size;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    invoke-static {}, Lcom/twitter/library/media/util/TweetImageVariant;->values()[Lcom/twitter/library/media/util/TweetImageVariant;

    move-result-object v2

    .line 51
    array-length v3, v2

    .line 54
    invoke-virtual {p1}, Lcom/twitter/util/math/Size;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/twitter/util/math/Size;->b()I

    move-result v4

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    .line 56
    :goto_0
    if-ge v0, v3, :cond_2

    .line 57
    aget-object v4, v2, v0

    .line 58
    iget-boolean v5, v4, Lcom/twitter/library/media/util/TweetImageVariant;->mIsSizeAwareVariant:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/twitter/library/media/util/TweetImageVariant;->maxSize:Lcom/twitter/util/math/Size;

    invoke-virtual {v5, p1}, Lcom/twitter/util/math/Size;->b(Lcom/twitter/util/math/Size;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-static {p0, v4}, Lcom/twitter/library/media/util/TweetImageVariant;->a(Ljava/lang/String;Lcom/twitter/library/media/util/TweetImageVariant;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    sget-object v0, Lcom/twitter/library/media/util/TweetImageVariant;->d:Lcom/twitter/library/media/util/TweetImageVariant;

    invoke-static {p0, v0}, Lcom/twitter/library/media/util/TweetImageVariant;->a(Ljava/lang/String;Lcom/twitter/library/media/util/TweetImageVariant;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_3
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/library/media/util/TweetImageVariant;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/twitter/library/media/util/TweetImageVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/util/TweetImageVariant;

    return-object v0
.end method

.method public static values()[Lcom/twitter/library/media/util/TweetImageVariant;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/twitter/library/media/util/TweetImageVariant;->f:[Lcom/twitter/library/media/util/TweetImageVariant;

    invoke-virtual {v0}, [Lcom/twitter/library/media/util/TweetImageVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/library/media/util/TweetImageVariant;

    return-object v0
.end method
