.class synthetic Ltv/periscope/android/ui/chat/f;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Ltv/periscope/model/chat/MessageType$SentenceType;->values()[Ltv/periscope/model/chat/MessageType$SentenceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/periscope/android/ui/chat/f;->d:[I

    :try_start_0
    sget-object v0, Ltv/periscope/android/ui/chat/f;->d:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType$SentenceType;->b:Ltv/periscope/model/chat/MessageType$SentenceType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType$SentenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_18

    :goto_0
    :try_start_1
    sget-object v0, Ltv/periscope/android/ui/chat/f;->d:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType$SentenceType;->c:Ltv/periscope/model/chat/MessageType$SentenceType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType$SentenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_17

    :goto_1
    :try_start_2
    sget-object v0, Ltv/periscope/android/ui/chat/f;->d:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType$SentenceType;->d:Ltv/periscope/model/chat/MessageType$SentenceType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType$SentenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_16

    :goto_2
    :try_start_3
    sget-object v0, Ltv/periscope/android/ui/chat/f;->d:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType$SentenceType;->e:Ltv/periscope/model/chat/MessageType$SentenceType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType$SentenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_15

    :goto_3
    :try_start_4
    sget-object v0, Ltv/periscope/android/ui/chat/f;->d:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType$SentenceType;->a:Ltv/periscope/model/chat/MessageType$SentenceType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType$SentenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_14

    .line 269
    :goto_4
    invoke-static {}, Ltv/periscope/model/chat/MessageType$ReportType;->values()[Ltv/periscope/model/chat/MessageType$ReportType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/periscope/android/ui/chat/f;->c:[I

    :try_start_5
    sget-object v0, Ltv/periscope/android/ui/chat/f;->c:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType$ReportType;->c:Ltv/periscope/model/chat/MessageType$ReportType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType$ReportType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_13

    :goto_5
    :try_start_6
    sget-object v0, Ltv/periscope/android/ui/chat/f;->c:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType$ReportType;->b:Ltv/periscope/model/chat/MessageType$ReportType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType$ReportType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_12

    .line 133
    :goto_6
    invoke-static {}, Ltv/periscope/model/chat/MessageType;->values()[Ltv/periscope/model/chat/MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    :try_start_7
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->m:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_11

    :goto_7
    :try_start_8
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->g:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_10

    :goto_8
    :try_start_9
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->n:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_f

    :goto_9
    :try_start_a
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->d:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_e

    :goto_a
    :try_start_b
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->b:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_d

    :goto_b
    :try_start_c
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->q:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    :try_start_d
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->C:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_b

    :goto_d
    :try_start_e
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->B:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_a

    :goto_e
    :try_start_f
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->w:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_9

    :goto_f
    :try_start_10
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->z:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_8

    :goto_10
    :try_start_11
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->y:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_7

    :goto_11
    :try_start_12
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->E:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_6

    :goto_12
    :try_start_13
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->h:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_5

    :goto_13
    :try_start_14
    sget-object v0, Ltv/periscope/android/ui/chat/f;->b:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType;->r:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_4

    .line 201
    :goto_14
    invoke-static {}, Ltv/periscope/model/chat/MessageType$VerdictType;->values()[Ltv/periscope/model/chat/MessageType$VerdictType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/periscope/android/ui/chat/f;->a:[I

    :try_start_15
    sget-object v0, Ltv/periscope/android/ui/chat/f;->a:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType$VerdictType;->c:Ltv/periscope/model/chat/MessageType$VerdictType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType$VerdictType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_3

    :goto_15
    :try_start_16
    sget-object v0, Ltv/periscope/android/ui/chat/f;->a:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType$VerdictType;->d:Ltv/periscope/model/chat/MessageType$VerdictType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType$VerdictType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_2

    :goto_16
    :try_start_17
    sget-object v0, Ltv/periscope/android/ui/chat/f;->a:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType$VerdictType;->e:Ltv/periscope/model/chat/MessageType$VerdictType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType$VerdictType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1

    :goto_17
    :try_start_18
    sget-object v0, Ltv/periscope/android/ui/chat/f;->a:[I

    sget-object v1, Ltv/periscope/model/chat/MessageType$VerdictType;->b:Ltv/periscope/model/chat/MessageType$VerdictType;

    invoke-virtual {v1}, Ltv/periscope/model/chat/MessageType$VerdictType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_0

    :goto_18
    return-void

    :catch_0
    move-exception v0

    goto :goto_18

    :catch_1
    move-exception v0

    goto :goto_17

    :catch_2
    move-exception v0

    goto :goto_16

    :catch_3
    move-exception v0

    goto :goto_15

    .line 133
    :catch_4
    move-exception v0

    goto :goto_14

    :catch_5
    move-exception v0

    goto :goto_13

    :catch_6
    move-exception v0

    goto :goto_12

    :catch_7
    move-exception v0

    goto :goto_11

    :catch_8
    move-exception v0

    goto :goto_10

    :catch_9
    move-exception v0

    goto/16 :goto_f

    :catch_a
    move-exception v0

    goto/16 :goto_e

    :catch_b
    move-exception v0

    goto/16 :goto_d

    :catch_c
    move-exception v0

    goto/16 :goto_c

    :catch_d
    move-exception v0

    goto/16 :goto_b

    :catch_e
    move-exception v0

    goto/16 :goto_a

    :catch_f
    move-exception v0

    goto/16 :goto_9

    :catch_10
    move-exception v0

    goto/16 :goto_8

    :catch_11
    move-exception v0

    goto/16 :goto_7

    .line 269
    :catch_12
    move-exception v0

    goto/16 :goto_6

    :catch_13
    move-exception v0

    goto/16 :goto_5

    .line 284
    :catch_14
    move-exception v0

    goto/16 :goto_4

    :catch_15
    move-exception v0

    goto/16 :goto_3

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_1

    :catch_18
    move-exception v0

    goto/16 :goto_0
.end method
