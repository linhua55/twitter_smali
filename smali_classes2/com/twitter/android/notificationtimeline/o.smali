.class public Lcom/twitter/android/notificationtimeline/o;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/twitter/android/notificationtimeline/n;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lcom/twitter/internal/android/widget/TypefacesSpan;

.field private final d:[Lcom/twitter/internal/android/widget/TypefacesSpan;

.field private final e:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/twitter/android/notificationtimeline/o;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/notificationtimeline/o;->b:Landroid/util/SparseArray;

    .line 33
    iput-object p2, p0, Lcom/twitter/android/notificationtimeline/o;->e:Landroid/content/res/Resources;

    .line 35
    new-array v0, v4, [Lcom/twitter/internal/android/widget/TypefacesSpan;

    new-instance v1, Lcom/twitter/internal/android/widget/TypefacesSpan;

    invoke-direct {v1, p1, v4}, Lcom/twitter/internal/android/widget/TypefacesSpan;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/twitter/android/notificationtimeline/o;->c:[Lcom/twitter/internal/android/widget/TypefacesSpan;

    .line 36
    new-array v0, v5, [Lcom/twitter/internal/android/widget/TypefacesSpan;

    iget-object v1, p0, Lcom/twitter/android/notificationtimeline/o;->c:[Lcom/twitter/internal/android/widget/TypefacesSpan;

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    new-instance v1, Lcom/twitter/internal/android/widget/TypefacesSpan;

    invoke-direct {v1, p1, v4}, Lcom/twitter/internal/android/widget/TypefacesSpan;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Lcom/twitter/internal/android/widget/TypefacesSpan;

    invoke-direct {v2, p1, v4}, Lcom/twitter/internal/android/widget/TypefacesSpan;-><init>(Landroid/content/Context;I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/twitter/internal/android/widget/TypefacesSpan;

    invoke-direct {v1, p1, v4}, Lcom/twitter/internal/android/widget/TypefacesSpan;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/twitter/android/notificationtimeline/o;->d:[Lcom/twitter/internal/android/widget/TypefacesSpan;

    .line 43
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sget-object v1, Lcom/twitter/android/notificationtimeline/o;->a:[I

    invoke-direct {p0, v6, v0, v1}, Lcom/twitter/android/notificationtimeline/o;->a(I[I[I)V

    .line 51
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    invoke-direct {p0, v5, v0, v1}, Lcom/twitter/android/notificationtimeline/o;->a(I[I[I)V

    .line 61
    const/16 v0, 0x9

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/notificationtimeline/o;->a(I[I[I)V

    .line 71
    const/16 v0, 0xb

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/notificationtimeline/o;->a(I[I[I)V

    .line 81
    const/16 v0, 0x11

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/notificationtimeline/o;->a(I[I[I)V

    .line 91
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    invoke-direct {p0, v4, v0, v1}, Lcom/twitter/android/notificationtimeline/o;->a(I[I[I)V

    .line 101
    const/16 v0, 0xa

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/notificationtimeline/o;->a(I[I[I)V

    .line 111
    const/16 v0, 0xc

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/notificationtimeline/o;->a(I[I[I)V

    .line 121
    const/16 v0, 0x10

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/notificationtimeline/o;->a(I[I[I)V

    .line 130
    return-void

    .line 43
    nop

    :array_0
    .array-data 4
        0x7f0a03bf
        0x7f0a03c3
        0x7f0a03c0
        0x7f0a03be
        0x7f0a03c1
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x7f0a0708
        0x7f0a070c
        0x7f0a070a
    .end array-data

    :array_2
    .array-data 4
        0x7f0a0709
        0x7f0a070d
        0x7f0a070b
    .end array-data

    .line 61
    :array_3
    .array-data 4
        0x7f0a070e
        0x7f0a0712
        0x7f0a0710
    .end array-data

    :array_4
    .array-data 4
        0x7f0a070f
        0x7f0a0713
        0x7f0a0711
    .end array-data

    .line 71
    :array_5
    .array-data 4
        0x7f0a0702
        0x7f0a0706
        0x7f0a0704
    .end array-data

    :array_6
    .array-data 4
        0x7f0a0703
        0x7f0a0707
        0x7f0a0705
    .end array-data

    .line 81
    :array_7
    .array-data 4
        0x7f0a06fc
        0x7f0a0700
        0x7f0a06fe
    .end array-data

    :array_8
    .array-data 4
        0x7f0a06fd
        0x7f0a0701
        0x7f0a06ff
    .end array-data

    .line 91
    :array_9
    .array-data 4
        0x7f0a0465
        0x7f0a0469
        0x7f0a0467
    .end array-data

    :array_a
    .array-data 4
        0x7f0a0466
        0x7f0a046a
        0x7f0a0468
    .end array-data

    .line 101
    :array_b
    .array-data 4
        0x7f0a046b
        0x7f0a046f
        0x7f0a046d
    .end array-data

    :array_c
    .array-data 4
        0x7f0a046c
        0x7f0a0470
        0x7f0a046e
    .end array-data

    .line 111
    :array_d
    .array-data 4
        0x7f0a045f
        0x7f0a0463
        0x7f0a0461
    .end array-data

    :array_e
    .array-data 4
        0x7f0a0460
        0x7f0a0464
        0x7f0a0462
    .end array-data

    .line 121
    :array_f
    .array-data 4
        0x7f0a0459
        0x7f0a045d
        0x7f0a045b
    .end array-data

    :array_10
    .array-data 4
        0x7f0a045a
        0x7f0a045e
        0x7f0a045c
    .end array-data
.end method

.method private a(I[I[I)V
    .locals 7

    .prologue
    .line 151
    iget-object v6, p0, Lcom/twitter/android/notificationtimeline/o;->b:Landroid/util/SparseArray;

    new-instance v0, Lcom/twitter/android/notificationtimeline/n;

    iget-object v4, p0, Lcom/twitter/android/notificationtimeline/o;->c:[Lcom/twitter/internal/android/widget/TypefacesSpan;

    iget-object v5, p0, Lcom/twitter/android/notificationtimeline/o;->d:[Lcom/twitter/internal/android/widget/TypefacesSpan;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/notificationtimeline/n;-><init>(I[I[I[Lcom/twitter/internal/android/widget/TypefacesSpan;[Lcom/twitter/internal/android/widget/TypefacesSpan;)V

    invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;IILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 135
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/o;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/notificationtimeline/n;

    .line 136
    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Type not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 144
    :goto_0
    return-object v0

    .line 141
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/twitter/android/notificationtimeline/o;->e:Landroid/content/res/Resources;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/notificationtimeline/n;->a(Landroid/content/res/Resources;Ljava/util/List;IILjava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 144
    goto :goto_0
.end method
