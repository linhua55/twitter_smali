.class public Lcrx;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public g:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcrx;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcrx;->e:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcrx;->b:[Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcrx;->c:[Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcrx;->d:[Ljava/lang/String;

    .line 39
    iput p6, p0, Lcrx;->f:I

    .line 40
    iput p7, p0, Lcrx;->g:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IILcry;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p7}, Lcrx;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method
