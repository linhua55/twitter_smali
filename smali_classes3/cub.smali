.class public Lcub;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method private constructor <init>(Lcuc;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iget-wide v0, p1, Lcuc;->a:J

    iput-wide v0, p0, Lcub;->a:J

    .line 86
    iget-wide v0, p1, Lcuc;->b:J

    iput-wide v0, p0, Lcub;->b:J

    .line 87
    iget v0, p1, Lcuc;->c:I

    iput v0, p0, Lcub;->c:I

    .line 88
    iget-object v0, p1, Lcuc;->d:Ljava/lang/String;

    iput-object v0, p0, Lcub;->d:Ljava/lang/String;

    .line 89
    iget v0, p1, Lcuc;->e:I

    iput v0, p0, Lcub;->e:I

    .line 90
    iget-boolean v0, p1, Lcuc;->f:Z

    iput-boolean v0, p0, Lcub;->f:Z

    .line 91
    iget-boolean v0, p1, Lcuc;->g:Z

    iput-boolean v0, p0, Lcub;->g:Z

    .line 92
    iget-boolean v0, p1, Lcuc;->h:Z

    iput-boolean v0, p0, Lcub;->h:Z

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcuc;Lctz;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcub;-><init>(Lcuc;)V

    return-void
.end method
